#!/usr/bin/env python

import numpy as np
import multiprocessing as mp

NX = 800  # number of grid points along x-axis
NY = 800  # number of grid points along y-axis
STEPS = 1000  # number of time steps
OUTPUT_INTERVAL = 100  # interval for writing output files
DX = 1.0 / (NX - 1)  # grid spacing along x-axis
DY = 1.0 / (NY - 1)  # grid spacing along y-axis
DT = 0.01  # time step
ALPHA = 0.001  # thermal diffusivity


def initialize(nx, ny, rank, nranks):
    """
    Initialize the grid with boundary conditions and initial conditions.
    """
    u = np.zeros((nx, ny))
    u[:, 0] = 16.0  # Boundary condition at y=0
    u[:, -1] = 16.0  # Boundary condition at y=1
    if rank == 0:
        u[0, :] = 16.0  # Boundary condition at x=0
    if rank == nranks-1:
        u[-1, :] = 16.0  # Boundary condition at x=1
    return u


def update(u_local, recv_top, recv_bottom, val):
    """
    Update the local portion of the grid using explicit finite difference method.
    """
    u_new = np.copy(u_local)

    # Update boundary points using received data
    if recv_top is not None:
        u_new[0, :] = recv_top
    if recv_bottom is not None:
        u_new[-1, :] = recv_bottom

    for i in range(1, u_local.shape[0]-1):
        for j in range(1, u_local.shape[1]-1):
            u_new[i, j] = val
            #u_new[i, j] = u_local[i, j] + ALPHA * DT * (
            #    (u_local[i + 1, j] - 2.0 * u_local[i, j] + u_local[i - 1, j]) / (DX * DX) +
            #    (u_local[i, j + 1] - 2.0 * u_local[i, j] + u_local[i, j - 1]) / (DY * DY)
            #)

    return u_new


def worker(rank, n_processes, result, recv_queues, output_lock):
    """
    Worker function for parallel computation.
    """
    local_nx = NX // n_processes
    start_idx = rank * local_nx
    if rank == n_processes - 1:
        local_nx += NX % n_processes
    local_ny = NY
    u_local = initialize(local_nx, local_ny, rank, n_processes)

    # Get reference to the receive queues for neighboring processes
    recv_top = recv_queues[(rank - 1) % n_processes] if rank > 0 else None
    recv_bottom = recv_queues[(rank + 1) % n_processes] if rank < n_processes - 1 else None

    for step in range(0, STEPS):

        # Send boundary values to neighboring processes
        if recv_top is not None:
           #recv_top.put(u_local[0, :])
           recv_top.put(rank*np.ones((local_ny)))
        if recv_bottom is not None:
           #recv_bottom.put(u_local[-1, :])
           recv_bottom.put(rank*np.ones((local_ny)))

        # Receive boundary values from neighboring processes
        top, bottom = None, None
        if recv_top is not None:
           top = recv_top.get()
           u_local[0, :] = top
        if recv_bottom is not None:
           bottom = recv_bottom.get()
           u_local[-1, :] = bottom

        u_local = update(u_local, top, bottom, rank)
        result[start_idx:start_idx + local_nx, :] = u_local

        # Output current state
        if step % OUTPUT_INTERVAL == 0:
            with output_lock:
                print(f"Step {step}, rank {rank}/{n_processes}, size {u_local.size}")
                # Update the shared array with the current result
                if rank == 0:
                    write_output(result, step)


    # Update the shared array with the final result
    result[start_idx:start_idx + local_nx, :] = u_local


def write_output(result, step):
    """
    Write the current grid to an output file.
    """
    filename = f"result_{step}.txt"
    with open(filename, "w") as f:
        for row in result:
            f.write(" ".join(map(str, row)) + "\n")


def main():
    n_processes = mp.cpu_count()
    print("*** Running on {n_processes} processes ***")

    # Create queues for inter-process communication
    recv_queues = [mp.Queue() for _ in range(n_processes)]

    # Shared array for storing the final result
    shared_array_base = mp.Array('d', NX * NY)
    result = np.frombuffer(shared_array_base.get_obj(), dtype=np.float64).reshape((NX, NY))

    processes = []
    output_lock = mp.Lock()
    for rank in range(n_processes):
        p = mp.Process(target=worker, args=(rank, n_processes, result, recv_queues, output_lock))
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
    import sys
    init = time.perf_counter()
    main()
    finish = time.perf_counter()
    total = finish - init
    print(f"Finished in {total:0.2f} sec.")
