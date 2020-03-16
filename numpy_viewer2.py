import sys
import numpy as np
import matplotlib
from PyQt5 import QtCore
import PyQt5.QtWidgets as QtW
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg
from matplotlib.widgets import RectangleSelector

class MyPlotWidget(FigureCanvasQTAgg):

    def __init__(self, width=10, height=5):
        super().__init__(matplotlib.figure.Figure(figsize=(width,height)))
        #self.canvas = FigureCanvasQTAgg(self.fig)
        self.ax = self.figure.add_axes([0,0,1,1]) #[0.27, 0.8, 0.5, 0.05])
        self.cax = self.figure.add_axes([0.27, 0.8, 0.5, 0.05])
        self.cbar = None
        

        #x = np.linspace(0,1,100)
        #y = np.sin(x)
        #self.ax.plot(x,y)
        self.draw()
        self.X = None
        self.Y = None
        self.Z = None

        self.cbar_min = 0.0
        self.cbar_max = 1.0
        
        self.rs = None 

        # connect mouse events to canvas
        self.figure.canvas.mpl_connect('key_press_event', self.toogle_selector)
        self.figure.canvas.mpl_connect('scroll_event', self.on_mouse_wheel)
    
        return


    def on_mouse_wheel(self, event):
        print('Mouse wheel')
        if self.cax == event.inaxes:
            print()
            if event.button == 'up':
                print("up")
                self.cbar.set_clim([0.9 * c for c in self.cbar.get_clim()])
                print(self.cbar.get_clim())
            elif event.button == 'down':
                print("down")
                self.cbar.set_clim([1.1 * c for c in self.cbar.get_clim()])
                print(self.cbar.get_clim())
            else:
                print(event.button)
            #self.cbar.ax.set_clim(self.cbar.get_clim())
            self.cbar.vmin, self.cbar.vmax = self.cbar.get_clim()
            self.cbar.set_ticks(np.linspace(self.cbar.vmin, self.cbar.vmax, 10))
            self.cbar.ax.autoscale_view()
            self.draw()
            

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
        #self.x1, self.x2, self.y1, self.y2 = x1, x2, y1, y2
        #Z = self.Z
        #floor = int
        #self.ax1.plot(Z[floor(x1):floor(x2),floor(y1):floor(y2)].sum(axis=1))
        #self.ax2.plot((x1, x2), (y1,y2))

    def show(self, X,Y,Z):
        cont_x = self.ax.contour(X, levels=2,colors='k', linestyles='solid')
        cont_y = self.ax.contour(Y, levels=2,colors='k', linestyles='solid')
        z_imshow = self.ax.imshow(Z)
        self.X = X
        self.Y = Y
        self.Z = Z
        #if self.cbar is None:
        self.cbar = self.figure.colorbar(z_imshow, cax=self.cax, orientation='horizontal')#, fraction=.1)
        self.rs = RectangleSelector(self.ax, self.line_select_callback,
                                                drawtype='box' , useblit=False,
                                                button=[1, 3],  # don't use middle button
                                                minspanx=5, minspany=5,
                                                spancoords='pixels',
                                                interactive=True)
    
        return


    def test_show(self):
        t = np.linspace(-np.pi,np.pi, 1025)
        y = np.sin(t)
        x = np.cos(t)
        X, Y = np.meshgrid(x,y)
        Z = X + Y
        self.show(X,Y,Z)
        return
    


class MainWindow(QtW.QMainWindow):

    def __init__(self):
        super().__init__()
        self.setWindowTitle('MyWindow')
        self._main = MyPlotWidget()
        self.setCentralWidget(self._main)
        self._main.test_show()
        self.show()




if __name__ == '__main__':
    app = QtCore.QCoreApplication.instance()
    if app is None: app = QtW.QApplication(sys.argv)
    win = MainWindow()
    app.aboutToQuit.connect(app.deleteLater)
    app.exec_()