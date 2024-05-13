#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt
import sys

filename = sys.argv[1]

# Read the data from the file
data = np.loadtxt(filename)

# Create a heatmap
plt.imshow(data, cmap='hot', interpolation='nearest')
plt.colorbar()  # Add color bar
plt.title('Heatmap of Result')
plt.xlabel('X')
plt.ylabel('Y')
plt.show()

