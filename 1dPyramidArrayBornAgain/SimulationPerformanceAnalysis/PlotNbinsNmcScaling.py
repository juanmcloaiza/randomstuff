import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm

nbins = [50, 100, 250, 500]
times_mc10 = [1.17, 4.51, 27.41, 104.8]
times_mc20 = [2.35, 8.89, 52.41, 206.16]
times_mc50 = [5.77, 21.34, 128.18, 507.64]
times_mc100 = [10.80, 41.37, 254.70, 1020.79]

xbins = np.asarray(range(50,500))
ymc = np.asarray(range(10,100))
X, Y = np.meshgrid(xbins,ymc)
Z = Y*X**2

scaling_factor = 4e-5
T_minutes = 4e-5*Z / 60

fig = plt.figure(figsize=(15,10))
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(X, Y, T_minutes, cmap=cm.coolwarm)
ax.scatter(nbins, [10 for _ in nbins], [t/60. for t in times_mc10], alpha=1)
ax.scatter(nbins, [20 for _ in nbins], [t/60. for t in times_mc20], alpha=1)
ax.scatter(nbins, [50 for _ in nbins], [t/60. for t in times_mc50], alpha=1)
ax.scatter(nbins, [100 for _ in nbins], [t/60. for t in times_mc100], alpha=1)
ax.set_xlabel("$N_{bins}$")
ax.set_ylabel("$N_{MC}$")
ax.set_zlabel("$t [min]$")
plt.show()
