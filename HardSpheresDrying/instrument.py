import numpy as np
import bornagain as ba
from bornagain import deg, angstrom, nm, nm2, kvector_t

class Settings(object):
    """
    Sample-Detector Distance = 6680 mm
    Pixel Size = 0.172 mm (square pixel)
    Xc = 478 (X-pixel of the direct beam)
    Yc = 175 (Y-pixel of the direct beam)
    Nbins_x = 981
    Nbins_y = 1043

    Direct beam positions:
    u_0 = 82.216 mm (=478 *0.172 mm; horizontal)
    v_0 = 30.1 mm  (=175*0.172 mm; vertical) 
    wavelength = 0.08 nm
    """
    wavelength = 0.08*nm
    wl_std = 0.01*nm
    wl_samples = 25
    wl_sigma_factor = 3.0
    alpha_i = 0.08 * deg
    phi_i = 0.0 * deg
    intensity = 1.0e8

    distance_to_detector_mm = 6680
    nbins_x = 981
    nbins_y = 1043
    x_side_mm = 168.732
    y_side_mm = 179.396
    u0_mm = 82.216
    v0_mm = 30.1

    @classmethod
    def x_bin_size_mm(cls):
        return cls.x_side_mm / cls.nbins_x
    #bin_size_mm = 0.172

    @classmethod
    def y_bin_size_mm(cls):
        return cls.y_side_mm / cls.nbins_y
    #bin_size_mm = 0.172

    pass


def wavelength_distribution():
    distr = ba.DistributionGaussian(Settings.wavelength, Settings.wl_std)
    return ("*/Beam/Wavelength", distr, Settings.wl_samples, Settings.wl_sigma_factor, ba.RealLimits.positive())


def new_beam():
    beam = ba.GISASSimulation()
    beam.setBeamIntensity(Settings.intensity)
    beam.setBeamParameters(Settings.wavelength, Settings.alpha_i, Settings.phi_i)
    beam.addParameterDistribution(*wavelength_distribution())
    return beam


def new_rectangular_detector():
    """
    Sample-Detector Distance = 6680 mm
    Pixel Size = 0.172 mm (square pixel)
    Xc = 478 (X-pixel of the direct beam)
    Yc = 175 (Y-pixel of the direct beam)
    Nbins_x = 981
    Nbins_y = 1043

    Direct beam positions:
    u_0 = 82.216 mm (=478 *0.172 mm; horizontal)
    v_0 = 30.1 mm  (=175*0.172 mm; vertical) 
    """

    detector = ba.RectangularDetector(Settings.nbins_x, Settings.x_side_mm, Settings.nbins_y, Settings.y_side_mm)
    detector.setPerpendicularToDirectBeam(Settings.distance_to_detector_mm, Settings.u0_mm, Settings.v0_mm)
    print( "Rectangular Detector:")
    print( "  Perpendicular to Direct Beam")
    print(f"    x_bin_size: {Settings.y_bin_size_mm()}")
    print(f"    y_bin_size: {Settings.x_bin_size_mm()}")
    print(f"    distance_to_detector_mm: {Settings.distance_to_detector_mm}")
    print(f"    x_bins: {Settings.nbins_x}")
    print(f"    y_bins: {Settings.nbins_y}")
    print(f"    side_mm_x: {Settings.x_side_mm}")
    print(f"    side_mm_y: {Settings.y_side_mm}")
    print(f"    u0 (horizontal): {Settings.u0_mm}")
    print(f"    v0 (vertical): {Settings.v0_mm}")
    return detector


def new_spherical_detector():
    n_phi, phi_min, phi_max, n_alpha, alpha_min, alpha_max =  500, -1.0*deg, 1.0*deg, 500, 0.0*deg, 2.0*deg
    detector = ba.SphericalDetector(n_phi, phi_min, phi_max, n_alpha, alpha_min, alpha_max)

    print( "Spherical Detector:")
    print( "  Phi:")
    print(f"    n_phi: {n_phi}")
    print(f"    phi_min: {phi_min}")
    print(f"    phi_max: {phi_max}")
    print( "  Alpha:")
    print(f"    n_alpha: {n_alpha}")
    print(f"    alpha_min: {alpha_min}")
    print(f"    alpha_max: {alpha_max}")
    return detector
   

def new_instrument(spherical_detector=False):
    instrument = new_beam()
    if spherical_detector:
        detector = new_spherical_detector()
    else:
        detector = new_rectangular_detector()
    instrument.setDetector(detector)
    instrument.getOptions().setMonteCarloIntegration(False, 50)
    return instrument

if __name__ == "__main__":
    new_instrument()