import sys
from PyQt5.QtWidgets import QApplication, QMainWindow

class Window (QMainWindow):
    def __init__(self):
        super().__init__()

        self.top = 100
        self.left = 100
        self.width = 800
        self.height = 600
        self.title = "First Window"
        self.ChargeWindow()
    
    def ChargeWindow(self):
        self.setGeometry(self.left, self.top, self.width, self.height), 
        self.setWindowTitle(self.title),
        self.show()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = Window()
    sys.exit(app.exec_())