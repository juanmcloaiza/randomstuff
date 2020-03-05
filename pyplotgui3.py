import sys
import numpy as np
import matplotlib
from PyQt5 import QtCore
import PyQt5.QtWidgets as QtW
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg
from matplotlib.widgets import RectangleSelector


class MainWindow(QtW.QMainWindow):

    def __init__(self):
        super().__init__()
        self.setWindowTitle('MyWindow')
        self._main = QtW.QWidget()
        self.setCentralWidget(self._main)

        # Set canvas properties
        self.fig = matplotlib.figure.Figure(figsize=(10,10))
        self.canvas = FigureCanvasQTAgg(self.fig)
        self.ax = self.fig.add_subplot(2,2,1)
        self.ax1 = self.fig.add_subplot(2,2,2)
        self.ax2 = self.fig.add_subplot(2,2,3)
        ###
        self.x1, self.x2, self.y1, self.y2 = 0,0,0,0
        ax = self.ax
        ax1 = self.ax1
        ax2 = self.ax2
        t = np.linspace(-np.pi,np.pi, 1025)
        y = np.sin(t)
        x = np.cos(t)
        self.X, self.Y = np.meshgrid(x,y)
        X, Y = self.X, self.Y
        Z = 10 + X * Y
        self.Z = Z

        cont_x = ax.contour(X, levels=2,colors='k', linestyles='solid')
        cont_y = ax.contour(Y, levels=2,colors='k', linestyles='solid')
        cont_z = ax.contourf(Z)
        ax.clabel(cont_x, fontsize=20, inline=1)
        ax.clabel(cont_y, fontsize=20, inline=1)
        ax.set_xticks([])
        ax.set_yticks([])
        ax.set_ylabel("$y$", fontsize=20)
        ax.set_ylabel("$z$", fontsize=20)


        x1, x2, y1, y2 = self.x1, self.x2, self.y1, self.y2
        print(x1, x2, y1, y2)
        ###
        self.canvas.draw()

        self.rs = RectangleSelector(self.ax, self.line_select_callback,
                                                drawtype='box', useblit=False,
                                                button=[1, 3],  # don't use middle button
                                                minspanx=5, minspany=5,
                                                spancoords='pixels',
                                                interactive=True)

        # set Qlayout properties and show window
        self.gridLayout = QtW.QGridLayout(self._main)
        self.gridLayout.addWidget(self.canvas)
        self.setLayout(self.gridLayout)
        self.show()

        # connect mouse events to canvas
        self.fig.canvas.mpl_connect('key_press_event', self.toogle_selector)

    def toogle_selector(self, event):
        print(' Key pressed.')
        if event.key in ['Q', 'q'] and toggle_selector.RS.active:
            print(' RectangleSelector deactivated.')
            toggle_selector.RS.set_active(False)
        if event.key in ['A', 'a'] and not toggle_selector.RS.active:
            print(' RectangleSelector activated.')
            toggle_selector.RS.set_active(True)


    def line_select_callback(self, eclick, erelease):
        x1, y1 = eclick.xdata, eclick.ydata
        x2, y2 = erelease.xdata, erelease.ydata
        print("(%3.2f, %3.2f) --> (%3.2f, %3.2f)" % (x1, y1, x2, y2))
        print(" The button you used were: %s %s" % (eclick.button, erelease.button))
        self.x1, self.x2, self.y1, self.y2 = x1, x2, y1, y2
        Z = self.Z
        floor = int
        self.ax1.plot(Z[floor(x1):floor(x2),floor(y1):floor(y2)].sum(axis=1))
        self.ax2.plot((x1, x2), (y1,y2))

if __name__ == '__main__':
    app = QtCore.QCoreApplication.instance()
    if app is None: app = QtW.QApplication(sys.argv)
    win = MainWindow()
    app.aboutToQuit.connect(app.deleteLater)
    app.exec_()
