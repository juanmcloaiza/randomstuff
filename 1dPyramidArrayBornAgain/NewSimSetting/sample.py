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
    polymer = ("polymer", 10e-06, 0.008e-06)
    air =  ("air", 0.0, 0.0)
    #Ref: http://gisaxs.com/index.php/Refractive_index
    pass


class Scales(object):
    core_radius = 25.0*nm
    shell_thickness = 75.0*nm
    pyramid_side = 200*nm
    pyramid_height = 50*nm
    line_to_line_distance = 1300.0*nm
    xDecayLength = 200.0*nm
    yDecayLength = 200.0*nm
    n_repetitions=1
    orientation = "x"


    @classmethod
    def half_pyramid_side(cls):
        return 0.5 * cls.pyramid_side

    @classmethod
    def total_radius(cls):
        return cls.shell_thickness + cls.core_radius

    @classmethod
    def single_line_length(cls):
        return cls.pyramid_side * cls.n_repetitions

    pass


def new_substrate_layer():
    material = ba.MaterialBySLD(*Materials.silicon)
    layer = ba.Layer(material)
    return layer


def new_superstrate_layer():
    material = ba.MaterialBySLD(*Materials.air)
    layer = ba.Layer(material)
    return layer


def new_interference_function():
    d = Scales.line_to_line_distance * (1.0 + 0.1*np.random.uniform(-1.0,1.0))
    s = Scales.single_line_length()
    if Scales.orientation == 'x':
        interference_2d_lattice = ba.InterferenceFunction2DLattice(s, d, 90.0*deg, 0.0*deg)
    elif Scales.orientation == 'y':
        interference_2d_lattice = ba.InterferenceFunction2DLattice(Scales.line_to_line_distance, Scales.single_line_length(), 90.0*deg, 0.0*deg)
    else:
        raise KeyError

    interference_pdf  = ba.FTDecayFunction2DCauchy(Scales.xDecayLength, Scales.yDecayLength, 0.0*deg)
    interference_2d_lattice.setDecayFunction(interference_pdf)
    return interference_2d_lattice


def new_sphere_particle(material_tuple, radius):
    material = ba.MaterialBySLD(*material_tuple)
    formFactor = ba.FormFactorFullSphere(radius)
    particle = ba.Particle(material, formFactor)
    return particle


def new_core_shell_particle():
    core_position = ba.kvector_t(0.0, 0.0, Scales.shell_thickness)
    particle_shell = new_sphere_particle(Materials.air,Scales.total_radius())
    particle_core = new_sphere_particle(Materials.gold,Scales.core_radius)
    particleCoreShell = ba.ParticleCoreShell(particle_shell, particle_core, core_position)
    return particleCoreShell


def new_only_core_particle():
    particle_core = new_sphere_particle(Materials.gold,Scales.core_radius)
    return particle_core


def new_particle_at_position(x=0, y=0, z=0):
    particle = new_core_shell_particle()
    particle_position = kvector_t(x, y, z)
    particle.setPosition(particle_position)
    return particle


def new_particle_composition():
    particle_list = list()
    h = Scales.pyramid_height
    d = Scales.pyramid_side
    r = Scales.core_radius
    half_d = 0.5*d

    rnd1 = 0*np.random.normal(0,r,Scales.n_repetitions)
    rnd2 = 0*np.random.normal(0,r,Scales.n_repetitions)
    rnd3 = 0*np.random.normal(0,r,Scales.n_repetitions)
    rnd4 = 0*np.random.normal(0,r,Scales.n_repetitions)
    rnd5 = 0*np.random.normal(0,r,Scales.n_repetitions)
    rnd6 = 0*np.random.normal(0,r,Scales.n_repetitions)
    rnd7 = 0*np.random.normal(0,0.5*r,Scales.n_repetitions)
    for i in range(Scales.n_repetitions):
        # 4 bottom particles
        particle_list.append(new_particle_at_position(x=i*d+rnd1[i], y=rnd3[i], z=0))
        particle_list.append(new_particle_at_position(x=i*d+rnd2[i], y=d+rnd4[i], z=0))
    #    particle_list.append(new_particle_at_position(x=i*d+d, y=0, z=0))
    #    particle_list.append(new_particle_at_position(x=i*d+d, y=d, z=0))

        #top particle
        particle_list.append(new_particle_at_position(x=i*d+half_d+rnd5[i], y=half_d+rnd6[i], z=h+rnd7[i]))

    particleComposition = ba.ParticleComposition()
    for p in particle_list:
        particleComposition.addParticle(p)
    
    return particleComposition


def new_layout():
    particle = new_particle_composition()#new_only_core_particle()#new_core_shell_particle()#new_particle_composition() 
    interference_2d_lattice = new_interference_function()
    layout = ba.ParticleLayout()
    layout.addParticle(particle, 1.0)
    layout.setWeight(1)
    layout.setInterferenceFunction(interference_2d_lattice)
    return layout


def new_layer_with_layout():
    material_air = ba.MaterialBySLD(*Materials.air)
    layout_spheres = new_layout()
    layer_substrate = new_substrate_layer() 
    layer_substrate.addLayout(layout_spheres)
    return layer_substrate


def new_sample():
    sample = ba.MultiLayer()
    sample.addLayer(new_superstrate_layer())

    sample.addLayer(new_layer_with_layout())
    return sample


if __name__ == "__main__":
    new_sample()