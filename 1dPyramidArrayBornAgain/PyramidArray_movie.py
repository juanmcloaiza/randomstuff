#from PyramidArray_with_particle_composition import run_simulation
from PyramidArray_with_mesocrystal import run_simulation
import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import bornagain as ba
import os
import sys

if __name__ == '__main__':
    alpha_height_arr = []
    for alpha_i in [0.125, 0.35]:
        height_arr = []
        print("alpha_i = {}...".format(alpha_i))
        for height in np.linspace(25,125,101):
            print("\t height = {}...".format(height))
            title=f"$\\alpha_i = {alpha_i}^\\circ$, $ h = {height}$ nm"
            result = run_simulation(alpha_i, height)
            height_arr.append((result,title))
            #ba.plot_simulation_result(result, title = title)
        alpha_height_arr.append(height_arr)


    ###############
    I = len(alpha_height_arr)
    J = len(alpha_height_arr[0])
    countframe = 0
    fig, ax = plt.subplots(1,figsize=(14,7))
    for i in range(I):
        for j in range(J):
            axes_limits = ba.get_axes_limits(alpha_height_arr[i][j][0], ba.AxesUnits.NBINS)
            image = alpha_height_arr[i][j][0].array()
            title = alpha_height_arr[i][j][1]
            ax.cla()
            im = ax.imshow(image, norm=matplotlib.colors.LogNorm(), extent=axes_limits, cmap="jet", vmin=1e-2, vmax=1e4)
            ax.set_title(title)

            if(countframe==0):
                axes_labels = ba.get_axes_labels(alpha_height_arr[i][j][0], ba.AxesUnits.NBINS)
                fig.subplots_adjust(right=0.8)
                cbar_ax = fig.add_axes([0.85, 0.15, 0.05, 0.7])
                cb = fig.colorbar(im, cax=cbar_ax)
                cb.set_label("Intensity", fontsize=20)
                fig.text(0.5, 0.04, axes_labels[0], ha='center', fontsize=20)
                fig.text(0.04, 0.5, axes_labels[1], va='center', fontsize=20, rotation='vertical')

            fname = f'_tmp{countframe:03}.png'
            print('Saving frame', fname)
            fig.savefig(fname)
            countframe += 1
    try:
        os.system("mencoder 'mf://_tmp*.png' -mf type=png:fps=10 -ovc lavc -lavcopts vcodec=wmv2 -oac copy -o animation3.mpg")
        print('Removing temporary files')
       # os.system("rm _tmp*")
    except:
        print("Movie cannot be saved. Error:", sys.exc_info()[0])
        sys.exit()
    ################
