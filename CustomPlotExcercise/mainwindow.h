#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void makePlot(QVector<double> x, QVector<double> y);
    QVector<double> generateDataX(int);
    QVector<double> generateDataY(QVector<double> x);

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
