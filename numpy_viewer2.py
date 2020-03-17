import PyQt5.QtWidgets as QtW
from PyQt5 import QtCore
from PyQt5.QtCore import Qt, pyqtSlot
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib as mpl
from matplotlib.widgets import RectangleSelector
from mpl_toolkits.axes_grid.inset_locator import inset_axes
import numpy as np
import sys



def safe_parse_numpy(file_path):
        try:
            nparray = np.load(file_path)
            print(f"{file_path}:")
            print(f"Loaded array with shape: {nparray.shape}")
            return nparray
        except Exception as e:
            App.handle_exception(e)
            return None


class App(QtW.QMainWindow):
    def __init__(self, parent=None):
        super(App, self).__init__(parent)
        self.my_frame = MyFrame(self)
        self.setCentralWidget(self.my_frame)


    @staticmethod
    def handle_exception(e):
        msg = (f"Exception: {e}\n")
        msg += ("-"*60+"\n")
        msg += traceback.format_exc()
        msg += ("-"*60+"\n")
        print(msg)
        pop_up = QMessageBox()
        pop_up.setWindowTitle(f"Exception: {e}\n")
        pop_up.setText(msg)
        pop_up.setIcon(QMessageBox.Critical)
        x = pop_up.exec_()
        return


class MyFrame(QtW.QFrame):
    def __init__(self, parent=None):
        super(MyFrame, self).__init__(parent)
        self.setFrameShape(QtW.QFrame.StyledPanel)
        self.parent = parent
        layout = QtW.QVBoxLayout()
        self.graph_view = MyGraphView('myFrame', 'Numpy Array:', 'Visualization of 2d Numpy arrays', self)
        self.openFileButton = MyOpenNumpyButton(self.graph_view.update_graph)
        layout.addWidget(self.graph_view)
        layout.addWidget(self.openFileButton)
        self.setLayout(layout)
        

    def resizeEvent(self, event):
        self.graph_view.setGeometry(self.rect())


class MyGraphView(QtW.QWidget):
    def __init__(self, name, title, graph_title, parent = None):
        super(MyGraphView, self).__init__(parent)

        self.name = name
        self.graph_title = graph_title

        self.dpi = 100
        self.fig = Figure((5.0, 5.0), dpi = self.dpi, facecolor = (1,1,1), edgecolor = (0,0,0))
        self.canvas = FigureCanvas(self.fig)
        self.canvas.setParent(self)

        self.ax = self.canvas.figure.add_axes([0.1,0.1,0.8,0.8])

        self.cax = inset_axes(self.ax,
                    width="90%", # width = 30% of parent_bbox
                    height="5%", # height : 1 inch
                    loc=9)
        

        self.Title = QtW.QLabel(self)
        self.Title.setText(title)

        self.layout = QtW.QVBoxLayout()
        self.layout.addWidget(self.Title)
        self.layout.addWidget(self.canvas)
        self.layout.setStretchFactor(self.canvas, 1)
        self.setLayout(self.layout)


        # connect mouse events to canvas
        self.canvas.mpl_connect('scroll_event', self.on_mouse_wheel)
        self.canvas.mpl_connect('key_press_event', self.toggle_selector)

        self.canvas.setFocusPolicy( QtCore.Qt.ClickFocus)
        self.canvas.setFocus()


        self.canvas.draw()
        self.test_show()


    def toggle_selector(self, event):
        print(' Key pressed.')
        if event.key in ['Q', 'q']:
            print('key Q')
            self.rs.to_draw.set_visible(False)
            self.canvas.draw()
        if event.key in ['A', 'a']:
            print('key A')
            self.rs.to_draw.set_visible(True)
            self.canvas.draw()


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

            self.update_colorbar(*self.cbar.get_clim())

            return


    def update_colorbar(self, vmin, vmax):
        self.cax.clear()
        norm = mpl.colors.Normalize(vmin=vmin, vmax=vmax)
        mpl.colorbar.ColorbarBase(self.cax, orientation='horizontal', norm = norm)#, fraction=.1)
        self.canvas.draw()
        return
            

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


    def update_graph(self, Z, vmin = None, vmax = None, title = None):
        self.ax.clear()
        self.cax.clear()
        if title != None:
            self.ax.set_title(title)

        #cont_x = self.ax.contour(X,colors='k', linestyles='solid')
        #cont_y = self.ax.contour(Y,colors='k', linestyles='solid')
        z_imshow = self.ax.imshow(Z)
        #self.X = X
        #self.Y = Y
        self.Z = Z
        
        self.cbar = self.canvas.figure.colorbar(z_imshow, cax=self.cax, orientation='horizontal')

        self.rs = RectangleSelector(self.ax, self.line_select_callback,
                                                drawtype='box' , useblit=False,
                                                button=[1, 3],  # don't use middle button
                                                minspanx=0, minspany=0,
                                                spancoords='pixels',
                                                interactive=True)


        self.canvas.draw()
        return


    def test_show(self):
        t = np.linspace(-np.pi,np.pi, 1025)
        y = t#np.sin(t)
        x = t#np.cos(t)
        X, Y = np.meshgrid(x,y)
        Z = np.sin(X) * np.cos(Y)
        self.update_graph(Z)
        np.save("./myNumpyArray.npy", np.sin(X**2 + Y**2))
        return


class MyOpenNumpyButton(QtW.QPushButton):
    def __init__(self, callback, parent=None):
        super(MyOpenNumpyButton, self).__init__(parent)
        self.setText("Open Numpy Array")
        self.clicked.connect(self.on_click)
        self.callback = callback
        return

    @pyqtSlot()
    def on_click(self):
        options = QtW.QFileDialog.Options()
        options |= QtW.QFileDialog.DontUseNativeDialog
        fileName, _ = QtW.QFileDialog.getOpenFileName(self, "QFileDialog.getOpenFileName()", "","Numpy array (*.npy);;All Files (*)", options=options)
        if fileName:
            self.callback(safe_parse_numpy(fileName))
            return None
        else:
            return None 




if __name__ == "__main__":
    app = QtW.QApplication(sys.argv)
    window = App()
    window.show()
    app.exec_()