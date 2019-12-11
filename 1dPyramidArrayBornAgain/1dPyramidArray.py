import numpy as np
import bornagain as ba
from bornagain import deg, angstrom, nm, nm2, kvector_t


def get_sample(height=50):
    # Defining Materials
    material_1 = ba.MaterialBySLD("example10_Air", 0.0, 0.0)
    material_2 = ba.MaterialBySLD("example10_Particle", 108.29e-6, 0.0)
    material_3 = ba.MaterialBySLD("example10_Substrate", 19.92e-6, 0.0)
    #Ref: http://gisaxs.com/index.php/Refractive_index

    # Defining Layers
    layer_1 = ba.Layer(material_1)
    layer_2 = ba.Layer(material_3)

    # Defining Form Factors
    formFactor_1 = ba.FormFactorFullSphere(50.0*nm)
    formFactor_2 = ba.FormFactorBox(200.0*nm, 200.0*nm, height*nm)

    # Defining Particles
    particle_1 = ba.Particle(material_2, formFactor_1)

    # Defining 3D lattices
    lattice_1 = ba.Lattice(
        ba.kvector_t(200.0*nm, 0.0*nm, 0.0*nm),
        ba.kvector_t(0.0*nm, 200.0*nm, 0.0*nm),
        ba.kvector_t(100.0*nm, 100.0*nm, height*nm))

    # Defining crystals: basis particle + lattice
    crystal_1 = ba.Crystal(particle_1, lattice_1)

    # Defining mesocrystals
    mesocrystal_1 = ba.MesoCrystal(crystal_1, formFactor_2)
    mesocrystal_1_rotation = ba.RotationX(180.0*deg)
    mesocrystal_1.setRotation(mesocrystal_1_rotation)
    mesocrystal_1_position = kvector_t(0.0*nm, 0.0*nm, (100.0+height)*nm)
    mesocrystal_1.setPosition(mesocrystal_1_position)

    # Defining Interference Functions
    interference_1 = ba.InterferenceFunction2DLattice(200.0*nm, 1300.0*nm, 90.0*deg, 0.0*deg)
    interference_1_pdf  = ba.FTDecayFunction2DCauchy(1000.0*nm, 1000.0*nm, 0.0*deg)
    interference_1.setDecayFunction(interference_1_pdf)

    # Defining Particle Layouts and adding Particles
    layout_1 = ba.ParticleLayout()
    layout_1.addParticle(mesocrystal_1, 1.0)
    layout_1.setInterferenceFunction(interference_1)
    layout_1.setWeight(1)
    layout_1.setTotalParticleSurfaceDensity(3.84615384615e-06)

    # Adding layouts to layers
    layer_1.addLayout(layout_1)

    # Defining Multilayers
    multiLayer_1 = ba.MultiLayer()
    multiLayer_1.addLayer(layer_1)
    multiLayer_1.addLayer(layer_2)
    return multiLayer_1


def get_simulation(alpha_i=0.15):
    spherical_detector = False
    simulation = ba.GISASSimulation()
    simulation.setBeamParameters(0.1*nm, alpha_i*deg, 0.0*deg)
    simulation.setBeamIntensity(1.0e+08)

    distr_1 = ba.DistributionGaussian(0.1*nm, 0.01*nm)
    simulation.addParameterDistribution("*/Beam/Wavelength", distr_1, 25, 3.0, ba.RealLimits.positive())
    simulation.getOptions().setMonteCarloIntegration(True, 50)
    if spherical_detector:
        simulation.setDetectorParameters(500, -1.0*deg, 1.0*deg, 500, 0.0*deg, 2.0*deg)
    else:
        side_mm = 100.0
        side_bins = 200
        distance_to_detector_mm = 7000.0
        direct_beam_vertical_mm = - distance_to_detector_mm * np.tan(alpha_i*np.pi/180.0)
        detector = ba.RectangularDetector(side_bins, side_mm, side_bins, side_mm)
        detector.setPerpendicularToDirectBeam(distance_to_detector_mm, side_mm/2.0, direct_beam_vertical_mm)
        simulation.setDetector(detector)
    return simulation


def run_simulation(alpha_i, height):
    sample = get_sample(height)
    simulation = get_simulation(alpha_i)
    simulation.setSample(sample)
    simulation.runSimulation()
    return simulation.result()


if __name__ == '__main__':
    alpha_height_arr = []
    for alpha_i in [0.15, 0.4]:
        height_arr = []
        print("alpha_i = {}...".format(alpha_i))
        for height in [50.0, 75.0, 100, 200.0]:
            print("\t height = {}...".format(height))
            title=f"$\\alpha_i = {alpha_i}^\\circ$, $ h = {height}$ nm"
            result = run_simulation(alpha_i, height)
            height_arr.append((result,title))
            #ba.plot_simulation_result(result, title = title)
        alpha_height_arr.append(height_arr)