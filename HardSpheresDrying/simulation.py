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
    ta = time.time()
    result = run_simulation()
    tb = time.time()
    print(f"time: {tb-ta}s")
    axes_limits = ba.get_axes_limits(result, ba.AxesUnits.QSPACE)
    print(f"Axes limits: {axes_limits}")
    axes_labels = ba.get_axes_labels(result, ba.AxesUnits.QSPACE)
    nparray = result.array()
    np.save("result.npy",nparray)
    im = plt.imshow(nparray, norm=LogNorm(), extent=axes_limits, 
                            cmap="jet", aspect="equal")#, vmin=1e-3, vmax=1e2, aspect="equal")
    plt.show()