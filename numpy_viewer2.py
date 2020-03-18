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
        self.toggleLogButton = MyToggleLogButton(self.graph_view.update_graph)
        layout.addWidget(self.graph_view)
        layout.addWidget(self.openFileButton)
        layout.addWidget(self.toggleLogButton)
        self.setLayout(layout)
        

    def resizeEvent(self, event):
        self.graph_view.setGeometry(self.rect())

class DataToPlot(object):
    def __init__(self):
        pass



class MyGraphView(QtW.QWidget):
    def __init__(self, name, title, graph_title, parent = None):
        super(MyGraphView, self).__init__(parent)

        self.name = name
        self.graph_title = graph_title

        self.dpi = 100
        self.fig = Figure((10.0, 5.0), dpi = self.dpi, facecolor = (1,1,1), edgecolor = (0,0,0))
        self.canvas = FigureCanvas(self.fig)
        self.canvas.setParent(self)

        self.ax =  self.canvas.figure.add_axes([0.1,0.1,0.35,0.7])
        self.zax = self.canvas.figure.add_axes([0.6,0.1,0.35,0.7])
        self.cax = inset_axes(self.ax,
                    width="90%", # width = 30% of parent_bbox
                    height="5%", # height : 1 inch
                    loc=9)

        
        self.data = DataToPlot()
        self.params = DataToPlot()
        self.init_data_and_parameters()

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
        return #__init__()



    def init_data_and_parameters(self):
        self.data.X = np.zeros((10,10))
        self.data.Y = np.zeros((10,10))
        self.data.Z = np.zeros((10,10))

        self.data.Zzoom = np.zeros((10,10))
        self.data.x1 = 0
        self.data.x2 = 10
        self.data.y1 = 0
        self.data.y2 = 10

        self.params.xmin = -1
        self.params.xmax = 1

        self.params.ymin = -1
        self.params.ymax = 1

        self.params.zmin = -1
        self.params.zmax = 1

        self.params.log_scale = False
        self.params.reset_limits_required = False

        self.params.title = ""
        return #init_data_and_parameters


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
        return #toggle_selector


    def on_mouse_wheel(self, event):
        print('Mouse wheel')
        if self.cax == event.inaxes:
            if event.button == 'up':
                print("up")
                func = lambda c: c**0.9 if self.params.log_scale else 0.9*c
            elif event.button == 'down':
                print("down")
                func = lambda c: c**1.1 if self.params.log_scale else 1.1*c
            else:
                print(event.button)
                return

            vmin, vmax = (func(c) for c in self.cbar.get_clim())
            self.update_graph(zmin=vmin,zmax=vmax)
        return #on_mouse_wheel
           

    def line_select_callback(self, eclick, erelease):
        x1, y1 = int(eclick.xdata), int(eclick.ydata)
        x2, y2 = int(erelease.xdata), int(erelease.ydata)
        print("(%3.2f, %3.2f) --> (%3.2f, %3.2f)" % (x1, y1, x2, y2))
        print(" The button you used were: %s %s" % (eclick.button, erelease.button))
        Zzoom = self.data.Z[y1:y2,x1:x2]
        self.update_graph(x1=x1, x2=x2, y1=y1, y2=y2, Zzoom = Zzoom)
        #self.x1, self.x2, self.y1, self.y2 = x1, x2, y1, y2
        #Z = self.data.Z
        #floor = int
        #self.ax1.plot(Z[floor(x1):floor(x2),floor(y1):floor(y2)].sum(axis=1))
        #self.ax2.plot((x1, x2), (y1,y2))
        return #line_select_callback


        
    def update_data(self, **kwargs):
        for k in self.data.__dict__.keys():
            if k in kwargs.keys():
                self.data.__setattr__(k,kwargs[k])


    def update_params(self, **kwargs):
        for k in self.params.__dict__.keys():
            if k in kwargs.keys():
                self.params.__setattr__(k,kwargs[k])


    def update_graph(self, **kwargs):
        self.update_data(**kwargs)
        self.update_params(**kwargs)
        self.ax.clear()
        self.cax.clear()
        self.zax.clear()
        self.ax.set_title(self.params.title)

        self.build_norm()
        self.build_imshow()
        self.build_cbar()
        print(self.params.__dict__)


        self.rs = RectangleSelector(self.ax, self.line_select_callback,
                                                drawtype='box' , useblit=False,
                                                button=[1, 3],  # don't use middle button
                                                minspanx=0, minspany=0,
                                                spancoords='pixels',
                                                interactive=True)

        self.canvas.draw()
        #cont_x = self.ax.contour(X,colors='k', linestyles='solid')
        #cont_y = self.ax.contour(Y,colors='k', linestyles='solid')
        return


    def build_norm(self):
        if self.params.reset_limits_required:
            self.params.zmin = self.data.Z.min()
            self.params.zmax = self.data.Z.max()
            self.params.reset_limits_required = False

        if self.params.log_scale:
            self.take_care_of_negative_values()
            self.norm = mpl.colors.LogNorm(vmin=self.params.zmin, vmax=self.params.zmax)
        else:
            self.norm = mpl.colors.Normalize(vmin=self.params.zmin, vmax=self.params.zmax)
        return #build_norm


    def take_care_of_negative_values(self):
        if self.params.zmin <= 0:
            self.params.zmin = np.abs(self.data.Z.mean()/1e3)
        if self.params.zmax <= 0:
            self.params.zmax = 1+np.abs(self.data.Z.mean()/1e3)
        return #take_care_of_negative_values


    def build_imshow(self):
        self.ax_imshow = self.ax.imshow(self.data.Z, norm=self.norm, vmin=self.norm.vmin, vmax=self.norm.vmax)
        self.zax_imshow = self.zax.imshow(self.data.Zzoom, norm=self.norm, vmin=self.norm.vmin, vmax=self.norm.vmax,
                                            extent=[self.data.x1, self.data.x2, self.data.y1, self.data.y2])
        print("Norm:")
        print(self.norm.vmin)
        print(self.norm.vmax)
        print(self.norm.__dict__)
        return #build_imshow

    def build_cbar(self):
        #To me, this looks hacky but it works to make the colorbar and the imshow work in consonance:
        cbar = self.canvas.figure.colorbar(self.ax_imshow, cax=self.cax, orientation='horizontal', norm = self.norm)
        cbar.set_clim(self.norm.vmin, self.norm.vmax)
        #cbar = mpl.colorbar.ColorbarBase(self.cax, orientation='horizontal', norm = self.norm)#, fraction=.1)
        self.cbar = cbar
        return #build_cbar


    def test_show(self):
        t = np.linspace(-np.pi,np.pi, 1025)
        y = t#np.sin(t)
        x = t#np.cos(t)
        X, Y = np.meshgrid(x,y)
        Z = np.sin(X) * np.cos(Y)
        self.update_graph(Z = Z)
        np.save("./myNumpyArray.npy", 3 + 10*np.sin(np.sqrt(X**2 + Y**2)))
        return


class MyOpenNumpyButton(QtW.QPushButton):
    def __init__(self, callback_to_plot, parent=None):
        super(MyOpenNumpyButton, self).__init__(parent)
        self.setText("Open Numpy Array")
        self.clicked.connect(self.on_click)
        self.callback = callback_to_plot
        return

    @pyqtSlot()
    def on_click(self):
        options = QtW.QFileDialog.Options()
        options |= QtW.QFileDialog.DontUseNativeDialog
        fileName, _ = QtW.QFileDialog.getOpenFileName(self, "QFileDialog.getOpenFileName()", "","Numpy array (*.npy);;All Files (*)", options=options)
        if fileName:
            Z = safe_parse_numpy(fileName)
            self.callback(Z = Z, zmin = Z.min(), zmax = Z.max())
            return None
        else:
            return None 


class MyToggleLogButton(QtW.QPushButton):
    def __init__(self, callback_to_plot, parent=None):
        super(MyToggleLogButton, self).__init__(parent)
        self.setText("Log/Linear")
        self.clicked.connect(self.on_click)
        self.callback = callback_to_plot
        self.toggle_on = False
        return

    @pyqtSlot()
    def on_click(self):
            self.toggle_on = not self.toggle_on
            self.callback(log_scale = self.toggle_on, reset_limits_required=True)
            return None


if __name__ == "__main__":
    app = QtW.QApplication(sys.argv)
    window = App()
    window.show()
    app.exec_()