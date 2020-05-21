import bornagain as ba
from bornagain import deg, angstrom, nm
import numpy as np


def build_sample(n_repetitions=100, roughness=0.15, lat_corr_length=10):
    """
    Builds a lamelar structure sample:
    ---------- Air ---------- (Semi-infinite fronting)
    --------- Lipid --------- (~ 4-5 nm)
    --------- Water --------- (~ 1.5 nm)
    ----------- . -----------
    ------ n_repetitions ----
    ----------- . -----------
    --------- Lipid --------- (~ 4-5 nm)
    --------- Water --------- (~ 1.5 nm)
    --------- SiO2 ---------- (~ 1.5 nm)
    ---------- Si ----------- (Semi-infinite backing)
    """
    # define materials:
    # https://www.bornagainproject.org/documentation/scripting/materials/
    # by SLD:
    # some material = ba.MaterialBySLD("name", sld_real, sld_imag)
    # or, by refractive index n = 1 - delta + i * beta
    # some_material = ba.HomogeneousMaterial("name", delta, beta)
    m_air = ba.MaterialBySLD("air", 0.0, 0.0)
    m_lipid = ba.MaterialBySLD("Lipid", 10e-6, 0.0)
    m_h2o = ba.MaterialBySLD("H20", 8e-6, 0.0)
    m_sio2 = ba.MaterialBySLD("SiO2", 22e-6, 0.0)
    m_si = ba.MaterialBySLD("Si", 19e-6, 0.0)

    # define the layers by material and thickness:
    l_air = ba.Layer(m_air)
    l_lipid = ba.Layer(m_lipid, 1.5*nm)
    l_h2o = ba.Layer(m_h2o, 4.0*nm)
    l_sio2 = ba.Layer(m_sio2, 1.5*nm)
    l_si = ba.Layer(m_si)

    # define the interfacial roughnesses:
    roughness_lipid_air = ba.LayerRoughness(roughness*nm, 0.5, lat_corr_length*nm) 
    roughness_h2o_lipid =  ba.LayerRoughness(roughness*nm, 0.5, lat_corr_length*nm) 
    roughness_lipid_h2o =  ba.LayerRoughness(roughness*nm, 0.5, lat_corr_length*nm) 
    roughness_sio2_h2o =  ba.LayerRoughness(roughness*nm, 0.5, lat_corr_length*nm) 
    roughness_si_sio2 =  ba.LayerRoughness(roughness*nm, 0.5, lat_corr_length*nm) 

    # define the multilayer to which layers will be added:
    my_sample = ba.MultiLayer()

    # add the fronting medium to the multilayer
    my_sample.addLayer(l_air)

    # add the first bi-layer --the one interfacing with the fronting:
    my_sample.addLayerWithTopRoughness(l_lipid, roughness_lipid_air)
    my_sample.addLayerWithTopRoughness(l_h2o, roughness_h2o_lipid)

    # add the layers in the middle:
    for i in range(n_repetitions-1):
        my_sample.addLayerWithTopRoughness(l_lipid, roughness_lipid_h2o)
        my_sample.addLayerWithTopRoughness(l_h2o, roughness_h2o_lipid)

    # add the backing:
    my_sample.addLayerWithTopRoughness(l_sio2, roughness_sio2_h2o)
    my_sample.addLayerWithTopRoughness(l_si, roughness_si_sio2)

    return my_sample


def define_instrument(scan_size=201, is_reflectometry=False):
    """
    Characterizing the input beam and output detector
    """
    scan_size = int(scan_size)
    if not is_reflectometry:
        print("Running GISAS simulation")
        instrument = ba.GISASSimulation()
        instrument.setDetectorParameters(scan_size, -0.5*deg, 0.5*deg,
                                         scan_size, 0.0*deg, 1.0*deg)
        instrument.setBeamParameters(1.0*angstrom, 0.2*deg, 0.0*deg)
        instrument.setBeamIntensity(5e11)
    else:
        print("Running Reflectometry Simluation")
        instrument = ba.SpecularSimulation()
        scan = ba.QSpecScan(scan_size, 0., .25/angstrom)
        instrument.setScan(scan)
    return instrument


def run_simulation(sample, scan_size=200,is_reflectometry=False):
    """
    Runs simulation and returns intensity map.
    """
    #This is you walking towards the instrument:
    instrument = define_instrument(is_reflectometry=is_reflectometry)

    #These are your hands putting the sample on the instrument:
    instrument.setSample(sample)

    #This is you starting the beam:
    instrument.runSimulation()

    #This is the instrument sending your results back:
    return instrument.result()


if __name__ == '__main__':
    if False:
        nr, lcr = 25, 10
        sample = build_sample(n_repetitions=nr, lat_corr_length=lcr)
        result = run_simulation(sample, is_reflectometry=False)
        ba.plot_simulation_result(result, title=f"n_rep = {nr}, lat. corr. lngth = {lcr}", cmap='jet', aspect='auto')
        result = run_simulation(sample, is_reflectometry=True)
        ba.plot_simulation_result(result, title=f"n_rep = {nr}, lat. corr. lngth = {lcr}")
        exit(0)

    lcr = 50
    nr = 10

    for i, rgh in enumerate(np.linspace(0,0.5,24*5+1)):
        sample = build_sample(n_repetitions=nr, lat_corr_length=max(lcr,1e-6), roughness=max(rgh,1e-6))

        result = run_simulation(sample, is_reflectometry=False)
        save_to = f"./gisas/gisas_{nr:03}_{lcr:03}_{i:03}.png"
        ba.plot_simulation_result(result, title=f"n_rep = {nr}, lat. corr. lngth = {lcr}, rough = {rgh:0.4f}", cmap='jet', aspect='auto', 
        intensity_min=1e-5, intensity_max=10,
        savefigfile=save_to)

        result = run_simulation(sample, is_reflectometry=True)
        save_to = f"./refl/refl_{nr:03}_{lcr:03}_{i:03}.png"
        ba.plot_simulation_result(result, title=f"n_rep = {nr}, lat. corr. lngth = {lcr}, rough = {rgh:0.4f}", 
        ymin=1e-6, ymax=2,
        savefigfile=save_to)
