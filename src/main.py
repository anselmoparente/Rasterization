import os
import sys
from pathlib import Path
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from utils.rasterizacao import Rasterizacao
from utils.folderController import Folder

if __name__ == "__main__":
    funcaoRaster = Rasterizacao()
    funcaoFolder = Folder()
    app = QGuiApplication(sys.argv)
    app.setOrganizationName("Os Brabos")
    app.setApplicationName("Rasterization")
    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty('funcaoRaster', funcaoRaster)
    engine.rootContext().setContextProperty('funcaoFolder', funcaoFolder)

    engine.load(os.fspath(Path(__file__).resolve().parent / "view/main.qml"))
    sys.exit(app.exec_())