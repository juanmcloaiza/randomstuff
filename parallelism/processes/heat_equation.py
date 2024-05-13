#!/usr/bin/env python

import numpy as np
import multiprocessing as mp

NX = 100  # number of grid points along x-axis
NY = 100  # number of grid points along y-axis
STEPS = 1000  # number of time steps
DX = 1.0 / (NX - 1)  # grid spacing along x-axis
DY = 1.0 / (NY - 1)  # grid spacing along y-axis
DT = 0.01  # time step
ALPHA = 0.1  # thermal diffusivity


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


def update(u):
    """
    Update the grid using explicit finite difference method.
    """
    u_new = np.copy(u)
    for i in range(1, u.shape[0] - 1):
        for j in range(1, u.shape[1] - 1):
            u_new[i, j] = u[i, j] + ALPHA * DT * (
                (u[i + 1, j] - 2.0 * u[i, j] + u[i - 1, j]) / (DX * DX) +
                (u[i, j + 1] - 2.0 * u[i, j] + u[i, j - 1]) / (DY * DY)
            )
    return u_new


def worker(rank, n_processes, result):
    """
    Worker function for parallel computation.
    """
    local_nx = NX // n_processes
    start_idx = rank * local_nx
    if rank == n_processes - 1:
        local_nx += NX % n_processes
    local_ny = NY
    u = initialize(local_nx, local_ny)
    for _ in range(STEPS):
        u = update(u)
    result[start_idx:start_idx + local_nx, :] = u


if __name__ == "__main__":
    n_processes = mp.cpu_count()

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
    with open("result.txt", "w") as f:
        for row in result:
            f.write(" ".join(map(str, row)) + "\n")

