#!/usr/bin/env python
import numpy as np
import time



def evaluate(a,b):
    try:
        c = int(input(f"{a} + {b} = "))
        if(c == a+b):
            return True
        else:
            return False
    except KeyboardInterrupt:
        exit(0)
    except Exception:
        pass
    return False


def print_message(counter_r, counter_f, counter_t):
    g = 100. * float(counter_r) / float(counter_t)
    print(f"R: {counter_r}/{counter_t}")
    print(f"F: {counter_f}/{counter_t}")
    print(f"Genauigkeit: {g:0.1f}%")
    print()
    return g


def main_loop(n_rep = 30):
    a_arr = np.random.choice(range(1,101), n_rep)
    b_arr = np.random.choice(range(1,101), n_rep)
    counter_r = 0
    counter_f = 0
    counter_t = 0
    for a,b in zip(a_arr, b_arr):
        counter_t+=1
        tf = evaluate(a,b)
        if tf:
            print("Richtig!")
            counter_r+=1
        else:
            print("Falsh!")
            counter_f+=1
        g = print_message(counter_r, counter_f, counter_t)

    return g


if __name__ == "__main__":
    time_a = time.time()
    g = main_loop(50)
    time_b = time.time()
    s = time_b - time_a
    print()
    print("*"*80)
    print(f"Brava!!! Te ga fato in soli {s:0.2f} secondi")
    print("*"*80)
    print()
