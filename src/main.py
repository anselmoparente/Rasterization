import os
import sys
from pathlib import Path
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    app.setOrganizationName("Os Brabos")
    app.setApplicationName("Rasterization")
    engine = QQmlApplicationEngine()

    engine.load(os.fspath(Path(__file__).resolve().parent / "view/main.qml"))
    sys.exit(app.exec_())