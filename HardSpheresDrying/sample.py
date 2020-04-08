import numpy as np
import bornagain as ba
from bornagain import deg, angstrom, nm, nm2, kvector_t

class Materials(object):
    """
    for the Hard, I calculate for the
    polymer compound an X-ray SLD of
    (9.053529 -i0.00815)*10^(-6) Angstroem-2,
    using a wavelength of 1.034 Angstroem
    (this is what we used at ESRF)

    For the water,
    assuming it contains NaHCO3 (sodium bicarbonate),
    a similar structure of the Rhodafac surfactant
    that we have and demineralized water the
    following SLD: (9.4564-i0.013)*10^(-6) Angstroem-2)
    """
    gold = ("gold", 108.29e-06, 0.0)
    silicon = ("silicon", 19.92e-06, 0.0)
    polymer = ("polymer", 9.05e-06, 0.008e-06)
    water = ("water", 9.45e-06, 0.013e-06)
    air =  ("air", 0.0, 0.0)
    pass


class Scales(object):
    sphere_radius = 50.0*nm
    bottom_to_bottom_distance = 180*nm
    xLatticeLength = 180.0*nm
    yLatticeLength = 180.0*nm
    xDecayLength = 1800.0*nm
    yDecayLength = 1800.0*nm
    n_repetitions=10

    @staticmethod
    def total_height():
        return Scales.bottom_to_bottom_distance * Scales.n_repetitions

    pass


def new_substrate_layer():
    material = ba.MaterialBySLD(*Materials.silicon)
    layer = ba.Layer(material)
    return layer


def new_superstrate_layer():
    material = ba.MaterialBySLD(*Materials.water)
    layer = ba.Layer(material)
    return layer


def interference_function():
    # Defining Interference Functions
    interference_2d_pdf  = ba.FTDecayFunction2DCauchy(Scales.xDecayLength, Scales.yDecayLength, 0.0*deg)
    interference_2d_lattice = ba.InterferenceFunction2DLattice(Scales.xLatticeLength, Scales.yLatticeLength, 90.0*deg, 0.0*deg)
    interference_2d_lattice.setDecayFunction(interference_2d_pdf)
    return interference_2d_lattice


def new_sphere_particle():
    material = ba.MaterialBySLD(*Materials.polymer)
    formFactor = ba.FormFactorFullSphere(Scales.sphere_radius)
    particle = ba.Particle(material, formFactor)
    return particle


def new_cylinder_particle(height):
    material = ba.MaterialBySLD(*Materials.polymer)
    formFactor = ba.FormFactorCylinder(Scales.sphere_radius, height)
    particle = ba.Particle(material, formFactor)
    particle.setPosition(0.0, 0.0, -height)
    return particle


def new_particle_composition(particle_type="spheroid"):
    material = ba.MaterialBySLD(*Materials.polymer)
    
    particleComposition = ba.ParticleComposition()
    void_fraction = 0.1
    height = (1.0 - void_fraction) * Scales.bottom_to_bottom_distance
    assert void_fraction <= 1.0, "Height is greater than bottom_to_bottom distance"

    if particle_type == "spheroid":
        formFactor = ba.FormFactorFullSpheroid(Scales.sphere_radius, height)
    elif particle_type == "cylinder":
        formFactor = ba.FormFactorCylinder(Scales.sphere_radius, height)
    elif particle_type == "sphere":
        formFactor = ba.FormFactorFullSphere(Scales.sphere_radius)

    for i in range(Scales.n_repetitions):
        particle_i = ba.Particle(material, formFactor)
        x, y, z = Scales.xLatticeLength*np.random.uniform(-1,1,3)
        z *= 0.5
        z += (-Scales.total_height()+i*Scales.bottom_to_bottom_distance)
        particle_i_position = kvector_t(x, y, z)
        particle_i.setPosition(particle_i_position)
        particleComposition.addParticle(particle_i)
    
    return particleComposition


def new_layout():
    particle = new_particle_composition("cylinder")
    interference_2d_lattice = interference_function()
    layout = ba.ParticleLayout()
    layout.addParticle(particle, 1.0)
    layout.setWeight(1)
    layout.setInterferenceFunction(interference_2d_lattice)
    return layout


def new_layer_with_layout():
    material_air = ba.MaterialBySLD(*Materials.water)
    layout_spheres = new_layout()
    layer_air = ba.Layer(material_air, Scales.total_height())
    layer_air.addLayout(layout_spheres)
    return layer_air


def new_sample():
    sample = ba.MultiLayer()
    sample.addLayer(new_superstrate_layer())
        
    sample.addLayer(new_layer_with_layout())

    sample.addLayer(new_substrate_layer())
    return sample

if __name__ == "__main__":
    new_sample()