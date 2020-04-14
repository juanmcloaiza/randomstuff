from sample import new_sample
from instrument import new_instrument
import bornagain as ba
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import LogNorm
import time

def run_simulation():
    sample = new_sample()
    instrument = new_instrument()
    instrument.setSample(sample)
    instrument.runSimulation()
    return instrument.result()


if __name__ == '__main__':
    n_experiments = 1
    instrument = new_instrument()
    sample_list =[new_sample() for _ in range(n_experiments)]
    array_list = []

    ta = time.time()
    for i, sample in enumerate(sample_list):
        instrument.setSample(sample)
        instrument.runSimulation()
        result = instrument.result() 
        nparray = result.array()
        fname = f"result_{i}.npy"
        #np.save(fname, nparray)
        array_list.append(nparray)
        print(f"Array saved to {fname}")
    tb = time.time()
    print(f"time: {tb-ta}s")


    axes_limits = ba.get_axes_limits(result, ba.AxesUnits.QSPACE)
    axes_labels = ba.get_axes_labels(result, ba.AxesUnits.QSPACE)
    print(f"Axes limits: {axes_limits}")
    print(f"Axes labels: {axes_labels}")

    sum_array = np.zeros_like(array_list[0])
    for s in array_list:
        sum_array += s
    sum_array /= len(array_list)

    im = plt.imshow(sum_array, norm=LogNorm(), extent=axes_limits,
                            cmap="jet", aspect="equal")#, vmin=1e-3, vmax=1e2, aspect="equal")

    plt.xlabel(axes_labels[0])
    plt.ylabel(axes_labels[1])
    plt.show()