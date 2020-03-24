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
import os
import traceback


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

        dw = QtW.QDesktopWidget()
        dx = dw.width()
        dy = dw.height()
        self.setMinimumSize(640, 480)
        self.setMaximumSize(0.7*dx, 0.7*dy)
        return #__init__


    @staticmethod
    def handle_exception(e):
        msg = (f"Exception: {e}\n")
        msg += ("-"*60+"\n")
        msg += traceback.format_exc()
        msg += ("-"*60+"\n")
        print(msg)
        pop_up = QtW.QMessageBox()
        pop_up.setWindowTitle(f"Exception: {e}\n")
        pop_up.setText(msg)
        pop_up.setIcon(QtW.QMessageBox.Critical)
        x = pop_up.exec_()
        return


class MyFrame(QtW.QFrame):
    def __init__(self, parent=None):
        super(MyFrame, self).__init__(parent)
        self.setFrameShape(QtW.QFrame.StyledPanel)
        self.parent = parent
        self.graph_view = MyGraphView('GRAPH_TITLE', self)


    def resizeEvent(self, event):
        self.graph_view.setGeometry(self.rect())
        return #resizeEvent


class DataToPlot(object):
    def __init__(self):
        pass

class MyGraphCommands(QtW.QWidget):
    def __init__(self, callback, parent = None):
        super(MyGraphCommands, self).__init__(parent)
        self.openFileButton = MyOpenNumpyButton(callback)
        self.toggleLogButton = MyToggleLogButton(callback)
        self.minMaxSpinboxes = MyMinMaxSpinboxes(callback)

        self.layout = QtW.QVBoxLayout()
        self.layout.addWidget(self.openFileButton)
        self.layout.addWidget(self.toggleLogButton)
        self.layout.addWidget(self.minMaxSpinboxes)
        self.setLayout(self.layout)
        return #__init__


    def update_widgets(self, **kwargs):
        to_update = {}
        keys_to_update = "zmin", "zmax"
        for k in keys_to_update:
            if k in kwargs.keys():
                to_update[k] = kwargs[k]

        self.minMaxSpinboxes.set_min_max(**to_update)
        return #update_widgets


class AreaSelector(object):
    def __init__(self, ax, line_select_callback):
        self.ax = ax
        self.rs = RectangleSelector(ax, line_select_callback,
                                                drawtype='box' , useblit=False,
                                                button=[1, 3],  # don't use middle button
                                                minspanx=0, minspany=0,
                                                spancoords='pixels',
                                                interactive=True)


    def __call__(self, event):
        self.rs.update()
        if self.ax == event.inaxes:
            if event.key in ['Q', 'q']:
                self.rs.to_draw.set_visible(False)
                self.rs.set_active(False)
            if event.key in ['A', 'a']:
                self.rs.to_draw.set_visible(True)
                self.rs.set_active(True)

        return #__call__


class MyGraphView(QtW.QWidget):
    def __init__(self, graph_title, parent = None):
        super(MyGraphView, self).__init__(parent)

        self.graph_title = graph_title

        self.dpi = 100
        self.fig = Figure((10.0, 5.0), dpi = self.dpi, facecolor = (1,1,1), edgecolor = (0,0,0))
        self.canvas = FigureCanvas(self.fig)
        self.define_axes()

        self.init_data_and_parameters()
        self.init_xyzLabel()
        self.commands = MyGraphCommands(self.update_graph)
        self.define_layout()
        self.init_canvas_connections()
        self.canvas.draw()
        self.test_show()
        return #__init__()


    def init_xyzLabel(self):
        self.xyzLabel = QtW.QLabel(self)
        self.xyzLabel.setText("")
        return #init_xyzLabel


    def define_layout(self):
        self.layout = QtW.QVBoxLayout()
        self.layout.addWidget(self.xyzLabel)
        self.layout.addWidget(self.canvas)
        self.layout.addWidget(self.commands)
        self.layout.setStretchFactor(self.canvas, 1)
        self.setLayout(self.layout)
        return #define_layout


    def define_axes(self):
        self.ax =  self.canvas.figure.add_axes([0.1,0.1,0.30,0.7])
        self.cax = self.canvas.figure.add_axes([0.505,0.1,0.025,0.7])
        self.zoom_ax = self.canvas.figure.add_axes([0.55,0.25,0.25,0.5])
        self.xax = self.canvas.figure.add_axes([0.55,0.1,0.25,0.1])
        self.yax = self.canvas.figure.add_axes([0.85,0.25,0.05,0.5])
        self.area_selector = AreaSelector(self.ax, self.line_select_callback)
        return #define_axes


    def init_canvas_connections(self):
        # connect mouse events to canvas
        self.canvas.mpl_connect('scroll_event', self.on_mouse_wheel)
        self.canvas.mpl_connect('key_press_event', self.area_selector)
        self.canvas.mpl_connect('motion_notify_event', self.on_mouse_move)
        #self.canvas.mpl_connect('draw_event', self.area_selector.mycallback)
        self.canvas.setFocusPolicy( QtCore.Qt.ClickFocus)
        self.canvas.setFocus()
        return #init_canvas_connections


    def init_data_and_parameters(self):
        self.data = DataToPlot()

        self.data.X = np.zeros((10,10))
        self.data.Y = np.zeros((10,10))
        self.data.Z = np.zeros((10,10))

        self.data.Zzoom = np.zeros((10,10))
        self.data.x1 = 0
        self.data.x2 = 10
        self.data.y1 = 0
        self.data.y2 = 10

        self.params = DataToPlot()
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


    def on_mouse_wheel(self, event):
        if self.cax == event.inaxes:
            if event.button == 'up':
                func = lambda c: c**0.9 if self.params.log_scale else 0.9*c
            elif event.button == 'down':
                func = lambda c: c**1.1 if self.params.log_scale else 1.1*c
            else:
                return

            vmin, vmax = (func(c) for c in self.cbar.get_clim())
            print(vmin,vmax)
            self.update_graph(zmin=vmin, zmax=vmax)
        return #on_mouse_wheel


    def on_mouse_move(self, event):
        x, y = event.xdata,event.ydata
        if x is None or y is None:
            return
        z = self.data.Z[int(y), int(x)]
        self.xyzLabel.setText(f"(x, y; z) = ({x:3.2g}, {y:3.2g}; {z:3.2g})")
        return #on_mouse_move


    def line_select_callback(self, eclick, erelease):
        x1, y1 = int(eclick.xdata), int(eclick.ydata)
        x2, y2 = int(erelease.xdata), int(erelease.ydata)
        print("(%3.2f, %3.2f) --> (%3.2f, %3.2f)" % (x1, y1, x2, y2))
        print(" The button you used were: %s %s" % (eclick.button, erelease.button))


        self.update_graph(x1=x1, x2=x2, y1=y1, y2=y2)
        return #line_select_callback


    def update_data(self, **kwargs):
        for k in self.data.__dict__.keys():
            if k in kwargs.keys():
                self.data.__setattr__(k,kwargs[k])


    def update_params(self, **kwargs):
        for k in self.params.__dict__.keys():
            if k in kwargs.keys():
                self.params.__setattr__(k,kwargs[k])

        if self.params.reset_limits_required:
            self.params.zmin = self.data.Z.min()
            self.params.zmax = self.data.Z.max()
            self.params.reset_limits_required = False
        return #update_params


    def update_axes(self, **kwargs):
        self.update_ax(**kwargs)
        self.update_cax()
        self.update_zoom_ax()
        self.update_xax()
        self.update_yax()
        return #update_axes


    def update_graph(self, **kwargs):
        self.canvas.figure.clear()
        self.define_axes()
        self.update_data(**kwargs)
        self.update_params(**kwargs)
        self.commands.update_widgets(**self.params.__dict__)
        self.build_norm(**kwargs)
        self.update_axes(**kwargs)
        self.update_area_selector(**kwargs)
        self.canvas.figure.suptitle(self.params.title)
        self.canvas.draw()
        print(self.params.__dict__)
        #cont_x = self.ax.contour(X,colors='k', linestyles='solid')
        #cont_y = self.ax.contour(Y,colors='k', linestyles='solid')
        return


    def build_norm(self, **kwargs):
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


    def update_ax(self, **kwargs):
        self.ax_imshow = self.ax.imshow(self.data.Z, norm=self.norm, vmin=self.norm.vmin, vmax=self.norm.vmax)
        return #update_ax


    def update_area_selector(self, **kwargs):
        self.area_selector.rs.to_draw.set_visible(True)
        self.area_selector.rs.extents = (self.data.x1, self.data.x2, self.data.y1, self.data.y2)
        #self.area_selector.rs.update()
        return #update_area_selector


    def update_cax(self):
        self.build_cbar()
        return #update_cax

    def update_zoom_ax(self):
        x1, x2 = self.data.x1, self.data.x2
        y1, y2 = self.data.y1, self.data.y2
        self.data.Zzoom = self.data.Z[y1:y2,x1:x2]
        self.zoom_ax_imshow = self.zoom_ax.imshow(self.data.Zzoom, norm=self.norm, vmin=self.norm.vmin, vmax=self.norm.vmax,
                                            extent=[x1, x2, y2, y1])
        self.zoom_ax.set_aspect("auto")
        self.zoom_ax.set_xticks([])
        self.zoom_ax.set_yticks([])
        return #update_zoom_ax


    def update_xax(self):
        if self.params.log_scale:
            self.xax.set_yscale('log')

        integration_x = self.data.Zzoom.sum(axis=0)
        rangex = np.linspace(self.data.x1, self.data.x2, len(integration_x))
        self.xax_line = self.xax.plot(rangex, integration_x)
        self.xax.set_xlim((self.data.x1, self.data.x2))
        self.xax.xaxis.set_ticks(np.floor(np.linspace(self.data.x1, self.data.x2, 5)))
        self.xax.set_yticks(np.linspace(integration_x.min(), integration_x.max(), 3))
        self.xax.yaxis.tick_right()
        self.xax.grid(which='both', axis='both')#, xdata=rangex)
        return #update_xax


    def update_yax(self):
        if self.params.log_scale:
            self.yax.set_xscale('log')

        integration_y =  self.data.Zzoom.sum(axis=1)
        rangey = np.linspace(self.data.y2, self.data.y1, len(integration_y))
        self.yax_line = self.yax.plot(np.flip(integration_y, axis=0), rangey)

        self.yax.set_ylim((self.data.y2, self.data.y1))
        self.yax.set_yticks(np.floor(np.linspace(self.data.y2, self.data.y1, 5)))
        self.yax.set_xticks(np.linspace(integration_y.min(), integration_y.max(), 3))
        #self.yax.locator_params(axis='x', numticks=3)
        self.yax.yaxis.tick_right()
        self.yax.xaxis.tick_top()
        self.yax.tick_params(axis='x', labelrotation=90)
        self.yax.grid(which='both', axis='both')#, xdata=rangex)
        return #update_yax


    def build_cbar(self):
        self.cbar = self.canvas.figure.colorbar(self.ax_imshow, cax=self.cax, orientation='vertical', norm = self.norm)
        self.cax.tick_params(axis='y', direction='in')
        self.cax.yaxis.tick_left()
        self.cbar.set_clim(self.norm.vmin, self.norm.vmax)
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
        try:
            options = QtW.QFileDialog.Options()
            options |= QtW.QFileDialog.DontUseNativeDialog
            fileName, _ = QtW.QFileDialog.getOpenFileName(self, "QFileDialog.getOpenFileName()", "","Numpy array (*.npy);;All Files (*)", options=options)
            if fileName:
                Z = safe_parse_numpy(fileName)
                self.callback(Z = Z, zmin = Z.min(), zmax = Z.max(), title=os.path.split(fileName)[-1])
        except Exception as e:
            App.handle_exception(e)
        return #on_click


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
        try:
            self.toggle_on = not self.toggle_on
            self.callback(log_scale = self.toggle_on, reset_limits_required=True)
        except Exception as e:
            App.handle_exception(e)
        return #on_click


class MyMinMaxSpinboxes(QtW.QFrame):
    def __init__(self, callback, parent=None):
        super(MyMinMaxSpinboxes, self).__init__(parent)
        self.maxSpinbox = QtW.QDoubleSpinBox()
        self.maxSpinbox.setMaximum(np.inf)
        self.maxSpinbox.setMinimum(-np.inf)
        self.maxSpinbox.setDecimals(10)

        self.minSpinbox = QtW.QDoubleSpinBox()
        self.minSpinbox.setMaximum(np.inf)
        self.minSpinbox.setMinimum(-np.inf)
        self.minSpinbox.setDecimals(10)
        self.layout = QtW.QFormLayout()
        self.layout.addRow(QtW.QLabel("color min: "), self.minSpinbox)
        self.layout.addRow(QtW.QLabel("color max: "), self.maxSpinbox)

        self.maxSpinbox.editingFinished.connect(self.on_focus_out)
        self.minSpinbox.editingFinished.connect(self.on_focus_out)
        self.callback = callback
        self.setLayout(self.layout)
        return #__init__

    @pyqtSlot()
    def on_focus_out(self):
            self.callback(zmax=self.maxSpinbox.value(), zmin=self.minSpinbox.value())
            return None #on_focus_out

    def set_min_max(self, zmin = -1, zmax = 1):
        self.minSpinbox.setValue(zmin)
        self.maxSpinbox.setValue(zmax)
        return #set_val




if __name__ == "__main__":
    app = QtW.QApplication(sys.argv)
    window = App()
    window.show()
    app.exec_()