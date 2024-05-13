#!/usr/bin/env python

import numpy as np
import multiprocessing as mp
import sys

NX = 100  # number of grid points along x-axis
NY = 100  # number of grid points along y-axis
STEPS = 1000  # number of time steps
OUTPUT_INTERVAL = 100  # interval for writing output files
DX = 1.0 / (NX - 1)  # grid spacing along x-axis
DY = 1.0 / (NY - 1)  # grid spacing along y-axis
DT = 0.01  # time step
ALPHA = 0.001  # thermal diffusivity


def initialize(nx, ny):
    """
    Initialize the grid with boundary conditions and initial conditions.
    """
    u = np.zeros((nx, ny))
    u[:, 0] = 1.0  # Boundary condition at y=0
    u[:, -1] = 1.0  # Boundary condition at y=1
    u[0, :] = 1.0  # Boundary condition at x=0
    u[-1, :] = 1.0  # Boundary condition at x=1
    return u


def update(u_local):
    """
    Update the local portion of the grid using explicit finite difference method.
    """
    u_new = np.copy(u_local)
    for i in range(1, u_local.shape[0] - 1):
        for j in range(1, u_local.shape[1] - 1):
            # Check if neighboring grid points are valid
            if np.isfinite(u_local[i + 1, j]) and np.isfinite(u_local[i - 1, j]) and np.isfinite(u_local[i, j + 1]) and np.isfinite(u_local[i, j - 1]):
                u_new[i, j] = u_local[i, j] + ALPHA * DT * (
                    (u_local[i + 1, j] - 2.0 * u_local[i, j] + u_local[i - 1, j]) / (DX * DX) +
                    (u_local[i, j + 1] - 2.0 * u_local[i, j] + u_local[i, j - 1]) / (DY * DY)
                )
    return u_new


def write_output(result, step):
    """
    Write the current grid to an output file.
    """
    filename = f"result_{step}.txt"
    with open(filename, "w") as f:
        for row in result:
            f.write(" ".join(map(str, row)) + "\n")


def worker(rank, n_processes, result):
    """
    Worker function for parallel computation.
    """
    local_nx = NX // n_processes
    start_idx = rank * local_nx
    if rank == n_processes - 1:
        local_nx += NX % n_processes
    local_ny = NY
    u_local = initialize(local_nx, local_ny)
    for step in range(1, STEPS + 1):
        u_local = update(u_local)
        if step % OUTPUT_INTERVAL == 0:
            # Call the function to write the output file
            write_output(u_local, step)
    # Update the shared array with the final result
    result[start_idx:start_idx + local_nx, :] = u_local

def main():
    n_processes = int(sys.argv[1]) #mp.cpu_count()

    # Shared array for storing the final result
    shared_array_base = mp.Array('d', NX * NY)
    result = np.frombuffer(shared_array_base.get_obj(), dtype=np.float64).reshape((NX, NY))

    processes = []
    for rank in range(n_processes):
        p = mp.Process(target=worker, args=(rank, n_processes, result))
        processes.append(p)
        p.start()

    for p in processes:
        p.join()

    # Output the final result
    with open("result_final.txt", "w") as f:
        for row in result:
            f.write(" ".join(map(str, row)) + "\n")



if __name__ == "__main__":
    import time
    init = time.perf_counter()
    main()
    finish = time.perf_counter()
    total = finish - init
    print(f"Finished in {total:0.2f} sec.")
