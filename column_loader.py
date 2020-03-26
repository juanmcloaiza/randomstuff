import PyQt5.QtWidgets as qtw
from PyQt5 import QtCore
from PyQt5.QtCore import Qt, pyqtSlot, pyqtSignal
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib as mpl
from matplotlib.widgets import RectangleSelector
from mpl_toolkits.axes_grid.inset_locator import inset_axes
import numpy as np
import sys
import os
import re
import traceback


def safe_parse(parse_func, file_path):
    try:
        with open(file_path, 'r') as fp:
            tf = parse_func(fp)
        print(f" Parsed {file_path}")
        return tf
    except Exception as e:
        App.handle_exception(e)
        return False


def safe_parse_numpy(parse_func, file_path):
    try:
        nparray = np.loadtxt(file_path)
        print(f"{file_path}:")
        print(f"Loaded array with shape: {nparray.shape}")
        tf = parse_func(nparray)
        print(f" Parsed {file_path}")
        return tf
    except Exception as e:
        App.handle_exception(e)
        return False




class FrozenClass(object):
    __isfrozen = False

    def __setattr__(self, key, value):
        if self.__isfrozen and not hasattr(self, key):
            raise TypeError("%r is a frozen class" % self)
        object.__setattr__(self, key, value)

    def _freeze(self):
        self.__isfrozen = True



class PlotData(FrozenClass):
    def __init__(self):
        self.X = np.zeros((1,10))
        self.Xerr = np.zeros((1,10))
        self.Z = np.zeros((1,10))
        self.Zerr = np.zeros((1,10))
        return


class PlotParams(FrozenClass):
    def __init__(self):
        self.x1 = 0
        self.x2 = 10
        self.y1 = 0
        self.y2 = 10

        self.xmin = -1
        self.xmax = 1
        self.ymin = -1
        self.ymax = 1

        self.zmin = -1
        self.zmax = 1

        self.log_scale = False
        self.reset_limits_required = True

        self.title = ""
        return



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


class MyGraphView(qtw.QWidget):
    finishedUpdating = pyqtSignal()
    def __init__(self, graph_title, parent = None):
        super(MyGraphView, self).__init__(parent)

        self.graph_title = graph_title

        self.dpi = 100
        self.fig = Figure((10.0, 5.0), dpi = self.dpi, facecolor = (1,1,1), edgecolor = (0,0,0))
        self.canvas = FigureCanvas(self.fig)
        self.define_axes()
        self.init_data_and_parameters()
        self.init_xyzLabel()
        #self.commands = MyGraphCommands(self.update_graph)
        self.define_layout()
        self.init_canvas_connections()
        self.canvas.draw()
        self.test_show()
        return #__init__()


    def init_xyzLabel(self):
        self.xyzLabel = qtw.QLabel(self)
        self.xyzLabel.setText("")
        return #init_xyzLabel


    def define_layout(self):
        self.layout = qtw.QVBoxLayout()
        self.layout.addWidget(self.xyzLabel)
        self.layout.addWidget(self.canvas)
        self.layout.setStretchFactor(self.canvas, 1)
        self.setLayout(self.layout)
        return #define_layout


    def define_axes(self):
        self.ax =  self.canvas.figure.add_axes([0.1,0.1,0.30,0.7])
        self.zoom_ax = self.canvas.figure.add_axes([0.55,0.25,0.25,0.5])
        self.area_selector = AreaSelector(self.ax, self.line_select_callback)
        return #define_axes


    def init_canvas_connections(self):
        # connect mouse events to canvas
        self.canvas.mpl_connect('key_press_event', self.area_selector)
        self.canvas.mpl_connect('motion_notify_event', self.on_mouse_move)
        #self.canvas.mpl_connect('draw_event', self.area_selector.mycallback)
        self.canvas.setFocusPolicy( Qt.ClickFocus)
        self.canvas.setFocus()
        return #init_canvas_connections


    def init_data_and_parameters(self):
        self.data = PlotData()
        self.params = PlotParams()
        return #init_data_and_parameters


    def on_mouse_move(self, event):
        x, y = event.xdata,event.ydata
        if x is None or y is None:
            return
        self.xyzLabel.setText(f"(x, y) = ({x:3.2g}, {y:3.2g})")
        return #on_mouse_move


    def line_select_callback(self, eclick, erelease):
        x1, y1 = (eclick.xdata), (eclick.ydata)
        x2, y2 = (erelease.xdata), (erelease.ydata)
        print("(%3.2f, %3.2f) --> (%3.2f, %3.2f)" % (x1, y1, x2, y2))
        print(" The button you used were: %s %s" % (eclick.button, erelease.button))

        self.update_graph(x1=x1, x2=x2, y1=y1, y2=y2)
        return #line_select_callback


    def update_data(self, **kwargs):
        for k in self.data.__dict__.keys():
            if k in kwargs.keys():
                self.data.__setattr__(k,kwargs[k])
        return #update_data


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
        self.update_zoom_ax()
        return #update_axes


    def update_graph(self, **kwargs):
        self.canvas.figure.clear()
        self.define_axes()
        self.update_data(**kwargs)
        self.update_params(**kwargs)
        self.update_axes(**kwargs)
        self.update_area_selector(**kwargs)
        self.canvas.figure.suptitle(self.params.title)
        self.canvas.draw()
        self.save(**kwargs)
        print(self.params.__dict__)
        self.finishedUpdating.emit()
        #cont_x = self.ax.contour(X,colors='k', linestyles='solid')
        #cont_y = self.ax.contour(Y,colors='k', linestyles='solid')
        return


    def save(self, **kwargs):
        savekey = "save_to_file"
        if savekey in kwargs.keys():
            filePath = kwargs[savekey]
            extension = os.path.splitext(filePath)[-1]
            if extension in [".png", ".pdf"]:
                self.canvas.figure.savefig(filePath)
            elif extension in [".txt"]:
                np.savetxt(filePath,self.data.Z)
            else:
                raise NotImplementedError
        return


    def update_ax(self, **kwargs):
        xmin, xmax = self.params.xmin, self.params.xmax
        ymin, ymax = self.params.ymin, self.params.ymax
        self.ax_line = self.ax.errorbar(self.data.X, self.data.Z, yerr=self.data.Zerr, xerr=self.data.Xerr, ecolor='C0', alpha = 1)
        self.ax.set_xlim((self.data.X.min(), self.data.X.max()))
        if self.params.log_scale:
            self.ax.set_yscale("symlog")

        return #update_ax


    def update_area_selector(self, **kwargs):
        self.area_selector.rs.to_draw.set_visible(True)
        self.area_selector.rs.extents = (self.params.x1, self.params.x2, self.params.y1, self.params.y2)
        #self.area_selector.rs.update()
        return #update_area_selector


    def update_zoom_ax(self):
        x1, x2 = self.params.x1, self.params.x2
        y1, y2 = self.params.y1, self.params.y2

        self.zoom_ax_line = self.zoom_ax.errorbar(self.data.X, self.data.Z, yerr=self.data.Zerr, xerr=self.data.Xerr, alpha = 1)
        self.zoom_ax.set_xlim((x1, x2))
        self.zoom_ax.set_ylim((y1, y2))
        self.zoom_ax.set_aspect("auto")

        if self.params.log_scale:
            self.zoom_ax.set_yscale("symlog")
        return #update_zoom_ax


    def test_show(self):
        X = np.linspace(-np.pi,np.pi, 1025)
        Z = np.sin(X)
        Zerr = np.cos(X)
        self.update_graph(X=X, Z=Z, Zerr=Zerr, Xerr=None) 
        #np.save("./myNumpyArray.npy", 3 + 10*np.sin(np.sqrt(X**2 + Y**2)))
        #np.savetxt("./myNumpyArray.txt", 3 + 10*np.sin(np.sqrt(X**2 + Y**2)))
        return


class Settings(FrozenClass):
    def __init__(self):
        self.dataDirPath = None
        self.dataFileName = None
        self._freeze()
        return


    def dataFilePath(self):
        if self.dataDirPath is None:
            return None
        return os.path.join(self.dataDirPath,self.dataFileName)


    def basename(self):
        if self.dataDirPath is None:
            return None
        return os.path.splitext(self.dataFilePath())[0]


class Experiment(FrozenClass):
    def __init__(self):
        self.selector_lambda = None
        self.angle_of_incidence = 0

        self.Q = np.asarray([])
        self.R = np.asarray([])
        self.dR = np.asarray([])
        self.dQ = np.asarray([])

        self._freeze()

        return


class MyFrame(qtw.QFrame,FrozenClass):

    def __init__(self):
        super().__init__()
        self.settings = Settings()
        self.experiment = Experiment()
        self.layout = qtw.QHBoxLayout()
        self.centralpanel = qtw.QVBoxLayout()
        self.leftpanel = qtw.QVBoxLayout()
        self.rightpanel = qtw.QVBoxLayout()
        self.minSpinBox = qtw.QDoubleSpinBox()
        self.maxSpinBox = qtw.QDoubleSpinBox()
        self.graphView = MyGraphView("Title")
        self.infoTable = qtw.QTableWidget()
        self.fileList = qtw.QListWidget()
        self.tabs = qtw.QTabWidget()
        self.initFrame()
        self._freeze()


    def initFrame(self):
        self.layout.setAlignment(Qt.AlignCenter)
        self.addExperimentInfo()
        self.addFileList()
        self.addMinMaxSpinBoxes()
        self.addFunctionalityButtons()
        self.addCanvas()
        self.addPanels()
        self.setLayout(self.layout)

    def addCanvas(self):
        self.centralpanel.addWidget(self.graphView)
        #self.graphView.finishedUpdating.connect(self.on_graph_updated)
        self.graphView.update_graph()
        return




    def addFileList(self):
        self.fileList.setMaximumWidth(self.fileList.width()/2.)
        self.leftpanel.addWidget(qtw.QLabel("File:"))
        self.leftpanel.addWidget(self.fileList)
        return


    def addFunctionalityButtons(self):
        buttonOpenDialog = qtw.QPushButton("Press here")
        buttonOpenDialog.clicked.connect(self.on_click_open_file)
        self.leftpanel.addWidget(buttonOpenDialog)

        buttonLogLinear = qtw.QPushButton("Log / Linear")
        buttonLogLinear .clicked.connect(self.on_click_loglinear)
        self.rightpanel.addWidget(buttonLogLinear)

        buttonSavePng = qtw.QPushButton("Save png or pdf")
        buttonSavePng.clicked.connect(self.on_click_save_png)
        self.rightpanel.addWidget(buttonSavePng)

        buttonSaveAscii = qtw.QPushButton("Save ascii")
        #buttonSaveAscii.clicked.connect(self.on_click_save_ascii)
        self.rightpanel.addWidget(buttonSaveAscii)

        return




    def addMinMaxSpinBoxes(self):
        self.init_spinbox(self.minSpinBox, self.on_spinbox_edit)
        self.init_spinbox(self.maxSpinBox, self.on_spinbox_edit)
        formLayout = qtw.QFormLayout()
        formLayout.addRow(self.tr("&Min Intensity"), self.minSpinBox)
        formLayout.addRow(self.tr("&Max Intensity"), self.maxSpinBox)
        formLayout.setFormAlignment(Qt.AlignBottom)
        self.rightpanel.addLayout(formLayout)
        return


    @staticmethod
    def init_spinbox(spinbox, slot):
        #spinbox.editingFinished.connect(slot)
        return

    @pyqtSlot()
    def on_spinbox_edit(self):
        try:
            self.graphView.update_graph(zmax=self.maxSpinBox.value(), zmin=self.minSpinBox.value())
        except Exception as e:
            App.handle_exception(e)
        return





    def addPanels(self):
        self.layout.addLayout(self.leftpanel)
        self.layout.addLayout(self.centralpanel)
        self.layout.addLayout(self.rightpanel)
        return


    def addExperimentInfo(self):
        self.infoTable.setMaximumWidth(self.infoTable.width()/2.)
        self.infoTable.setColumnCount(1)
        self.infoTable.horizontalHeader().hide()
        self.rightpanel.addWidget(qtw.QLabel("Info:"))
        self.rightpanel.addWidget(self.infoTable)
        return


    def doStuff(self):
        #self.graphView.test()
        #return
        if not self.read_data_file():
            return
        if not self.update_gui():
            return
        return


    def parse_reflectometry_file(self, fp):
        lines = list(reversed(fp.readlines()))
        x = list()
        y = list()
        y_err = list()
        x_err = list()

        # a marker for how many columns in the data there will be
        numcols = 0
        for i, line in enumerate(lines):
            try:
                # parse a line for numerical tokens separated by whitespace
                # or comma
                nums = [float(tok) for tok in
                        re.split(r"\s|,", line)
                        if len(tok)]
                if len(nums) in [0, 1]:
                    # might be trailing newlines at the end of the file,
                    # just ignore those
                    continue
                if not numcols:
                    # figure out how many columns one has
                    numcols = len(nums)
                elif len(nums) != numcols:
                    # if the number of columns changes there's an issue
                    break
                x.append(nums[0])
                y.append(nums[1])
                if len(nums) > 2:
                    y_err.append(nums[2])
                if len(nums) > 3:
                    x_err.append(nums[3])
            except ValueError:
                # you should drop into this if you can't parse tokens into
                # a series of floats. But the text may be meta-data, so
                # try to carry on.
                continue

        if len(x) == 0:
            raise RuntimeError("Datafile didn't appear to contain any data (or"
                               " was the wrong format)")

        q = sorted(x)
        r = [r for _,r in sorted(zip(x,y))]
        dq = [0. for _,dq in sorted(zip(x,y))]
        dr = [0. for _,dr in sorted(zip(x,y))]
        if numcols > 2:
            dr = [dr for _,dr in sorted(zip(x,y_err))]
            if numcols > 3:
                dq = [dq for _,dq in sorted(zip(x,x_err))]

        self.experiment.Q = np.asarray(q)
        self.experiment.R = np.asarray(r)
        self.experiment.dR = np.asarray(dr)
        self.experiment.dQ = np.asarray(dq)
        return True


    def read_data_file(self):
        # Open and read the dat file
        dataFilePath = self.openFileNameDialog()
        if dataFilePath:
            path, filename = os.path.split(dataFilePath)
            self.settings.dataFileName = filename
            self.settings.dataDirPath = path
            self.fileList.addItem(path)
            self.fileList.addItem(filename)
            return safe_parse(self.parse_reflectometry_file, self.settings.dataFilePath())
        return False


    def openFileNameDialog(self):
        try:
            options = qtw.QFileDialog.Options()
            options |= qtw.QFileDialog.DontUseNativeDialog
            fileName, _ = qtw.QFileDialog.getOpenFileName(self,"QFileDialog.getOpenFileName()", "","All Files (*);;Measurement dat file (*.dat)", options=options)
            # self.openFileNamesDialog()
            if fileName:
                return fileName
        except Exception as e:
            App.handle_exception(e)
        return None


    def update_gui(self):
        try:
            self.graphView.update_graph(
                            X = self.experiment.Q,
                            Z = self.experiment.R,
                            Xerr = self.experiment.dQ,
                            Zerr = self.experiment.dR,
                            )
            self.update_widgets()
        except Exception as e:
            App.handle_exception(e)
            return False

        return True


    def update_widgets(self):
        y = self.experiment.__dict__

        for i, k in enumerate(y.keys()):
            if k[0] == "_":
                continue
            item_k = qtw.QTableWidgetItem(str(k))
            item_v = qtw.QTableWidgetItem(str(y[k]))
            self.infoTable.insertRow(i)
            self.infoTable.setVerticalHeaderItem(i,item_k)
            self.infoTable.setItem(i,0,item_v)

        self.minSpinBox.setValue(self.graphView.params.zmin)
        self.maxSpinBox.setValue(self.graphView.params.zmax)

        return True


    @pyqtSlot()
    def on_click_open_file(self):
        try:
            self.doStuff()
        except Exception as e:
            App.handle_exception(e)



    @pyqtSlot()
    def on_click_loglinear(self):
        self.graphView.update_graph(log_scale = not self.graphView.params.log_scale, reset_limits_required=True)
        return


    @pyqtSlot()
    def on_click_save_png(self):
        try:

            fmt_choices = {"All Files(*)":".png", #default
                            "png (*.png)":".png",
                            "pdf (*.pdf)": ".pdf",
                            "ascii (*.txt)": ".txt"}
            choices_str = ";;".join([]+[k for k in fmt_choices.keys()])
            options = qtw.QFileDialog.Options()
            options |= qtw.QFileDialog.DontUseNativeDialog
            filePath, fmtChoice = qtw.QFileDialog.getSaveFileName(self,"Save File", "",
                                                          choices_str, options=options)
            if not filePath:
                return None

            extension = os.path.splitext(filePath)[-1]
            if extension not in fmt_choices.values():
                extension = fmt_choices[fmtChoice]
                filePath+=extension

            self.graphView.update_graph(save_to_file=filePath)
            print(f"Figure saved: {filePath}")
        except Exception as e:
            App.handle_exception(e)
        return #on_click_save_png


class MyTabs(qtw.QTabWidget,FrozenClass):
    def __init__(self):
        super().__init__()
        self.tabButton_add = qtw.QToolButton()
        self.tabButton_rmv = qtw.QToolButton()
        self.frameList =[]
        self.last_num = 0
        self.addTab()
        self.initCornerButton()
        self._freeze()

    def initCornerButton(self):
        self.setCornerWidget(self.tabButton_add,corner=Qt.TopLeftCorner)
        self.tabButton_add.setText('+')
        font = self.tabButton_add.font()
        font.setBold(True)
        self.tabButton_add.setFont(font)
        self.tabButton_add.clicked.connect(self.addTab)

        self.setCornerWidget(self.tabButton_rmv,corner=Qt.TopRightCorner)
        self.tabButton_rmv.setText('-')
        font = self.tabButton_rmv.font()
        font.setBold(True)
        self.tabButton_rmv.setFont(font)
        self.tabButton_rmv.clicked.connect(self.removeTab)
        return


    @pyqtSlot()
    def addTab(self):
        frame = MyFrame()
        super().addTab(frame, "New Experiment " + str(1 + self.last_num))
        self.setCurrentIndex(self.last_num)
        self.last_num += 1
        self.frameList.append(frame)

        for i, f in enumerate(self.frameList):
            name = f.settings.dataFileName
            if name is not None:
                self.setTabText(i,name)


        return


    @pyqtSlot()
    def removeTab(self):
        idx = self.currentIndex()
        del self.frameList[idx]
        super().removeTab(idx)
        if len(self.frameList) == 0:
            self.last_num = 0
            self.addTab()

        return


class App(qtw.QMainWindow, FrozenClass):
    def __init__(self, parent=None):
        super(App, self).__init__(parent)
        dw = qtw.QDesktopWidget()
        dx = dw.width()
        dy = dw.height()

        self.setMinimumSize(640, 480)
        self.setMaximumSize(0.7*dx, 0.7*dy)
        self.title = 'Reflectometry Data Viewer'
        self.my_tabs = MyTabs()
        self.setCentralWidget(self.my_tabs)

        self._freeze()
        self.setWindowTitle(self.title)
        self.show()

        return #__init__


    @staticmethod
    def handle_exception(e):
        msg = (f"Exception: {e}\n")
        msg += ("-"*60+"\n")
        msg += traceback.format_exc()
        msg += ("-"*60+"\n")
        print(msg)
        pop_up = qtw.QMessageBox()
        pop_up.setWindowTitle(f"Exception: {e}\n")
        pop_up.setText(msg)
        pop_up.setIcon(qtw.QMessageBox.Critical)
        x = pop_up.exec_()
        return





if __name__ == "__main__":
    app = qtw.QApplication(sys.argv)
    window = App()
    window.show()
    app.exec_()