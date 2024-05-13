#!/usr/bin/env python
import numpy as np
from multiprocessing import Pool

def initialize_temperature(nx, ny):
    """Initialize the temperature distribution in the domain."""
    temperature = np.zeros((nx, ny))
    temperature[:, 0] = 1  # Bottom boundary
    temperature[:, -1] = 1  # Top boundary
    temperature[0, :] = 1  # Left boundary
    temperature[-1, :] = 1  # Right boundary
    return temperature

def update_temperature(temperature):
    """Update the temperature distribution using the finite difference method."""
    nx, ny = temperature.shape
    new_temperature = np.copy(temperature)

    for i in range(1, nx - 1):
        for j in range(1, ny - 1):
            new_temperature[i, j] = (temperature[i + 1, j] + temperature[i - 1, j] +
                                      temperature[i, j + 1] + temperature[i, j - 1]) / 4

    return new_temperature

def solve_heat_equation(num_iterations, temperature):
    """Solve the 2D heat equation using multiprocessing."""
    for step in range(num_iterations):
        temperature = update_temperature(temperature)
        print(".", end="")
        if step % 100 == 0:
            print()
            print(f"Step {step}")
            write_output(temperature, step)
    return temperature

def write_output(result, step):
    """
    Write the current grid to an output file.
    """
    filename = f"result_{step}.txt"
    with open(filename, "w") as f:
        for row in result:
            f.write(" ".join(map(str, row)) + "\n")

def main(nproc):
    nx, ny = 100, 100  # Number of grid points in x and y directions
    num_iterations = 1000  # Number of iterations to solve the heat equation

    temperature = initialize_temperature(nx, ny)

    pool = Pool(nproc)  # Use multiprocessing Pool
    temperature = pool.apply(solve_heat_equation, (num_iterations, temperature))


if __name__ == "__main__":
    import time
    import sys
    nproc = int(sys.argv[1]) if len(sys.argv) > 1 else 1
    init = time.perf_counter()
    main(nproc)
    finish = time.perf_counter()
    total = finish - init
    print(f"Finished in {total:0.2f} sec. using {nproc} processes")

