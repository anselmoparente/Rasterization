import os
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal

class Folder(QObject):
    emptyFolder = pyqtSignal(bool)
    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot()
    def folderIsEmpty(self):
        if(len(os.listdir('src/assets/')) == 0):
            self.emptyFolder.emit(True)
        else: 
            self.emptyFolder.emit(False)