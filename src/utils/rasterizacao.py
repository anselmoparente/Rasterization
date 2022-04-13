# -*- coding: utf-8 -*-
# import turtle as tt
from PyQt5.QtCore import QObject, pyqtSlot, QVariant
import matplotlib as mpl
from numpy import array
mpl.use('Agg')  
import matplotlib.pyplot as plt
from math import floor

class Rasterizacao(QObject):

	def __init__(self):
		QObject.__init__(self)
		self.originalResolution = int(20),
		self.graphResolution = int(20),
		self.graphsFileNames = [
			'res20_20.png',
			'res60_60.png',
			'res120_120.png',
		],
		self.pointsOnX = [],
		self.pointsOnY = []

	def plotGraph(self, figure, fileName):
		plt.title('Resolution={}x{}'.format(self.graphResolution, self.graphResolution))
		plt.margins(x=0, y=0)
		plt.ylabel('Eixo Y', labelpad = 7)
		plt.xlabel('Eixo X', labelpad = 7)
		plt.grid(color = 'black', linestyle = '-', linewidth = 0.8)
		plt.xticks(range(-2, self.graphResolution + 2), rotation='vertical')
		plt.yticks(range(-2, self.graphResolution + 2))
		figure.savefig('./src/assets/' + str(fileName))

	def createPointsFragments(self, x, y):
		xm = floor(x)
		ym = floor(y)
		self.pointsOnX.append(xm + 0.5)
		self.pointsOnY.append(ym + 0.5)

	def doRasterization(self, pointsArray):
		resizeCoeficientsArray = [1, 3, 6]
		figure = plt.figure(figsize=(10, 7))

		for iteradorAux in range(len(resizeCoeficientsArray)):
			coeficientResolution = resizeCoeficientsArray[iteradorAux]
			# MULTIPLICA PELO COEFICIENTE DE RESOLUCAO DE PIXELS
			self.graphResolution = self.originalResolution[0] * coeficientResolution

			for i in range(len(pointsArray)):
				X1 = pointsArray[i][0]
				Y1 = pointsArray[i][1]
				X = X1
				Y = Y1
				try:
					X2 = pointsArray[i+1][0]
					Y2 = pointsArray[i+1][1]
				except IndexError:
					X2 = pointsArray[0][0]
					Y2 = pointsArray[0][1]

				if (X2 - X1 != 0):
					deltaX = (X2 - X1)
				else:
					deltaX = 0
				
				if (Y2 - Y1 != 0):
					deltaY = (Y2 - Y1)
				else:
					deltaY = 0
				
				if deltaX == 0:
					M = 0
				else:
					M = deltaY/deltaX
				B = Y - M * X
				
				self.pointsOnX = []
				self.pointsOnY = []
				
				self.createPointsFragments(X,Y)
				if(abs(deltaX) > abs(deltaY)):
					if (X < X2):
						while(X < X2):
							X = X+1
							Y=M*X + B
							self.createPointsFragments(X,Y)
					else:
						while(X > X2):
							X=X-1
							Y=M*X + B
							self.createPointsFragments(X,Y)
				else:
					if (Y < Y2):
						while(Y < Y2):
							Y=Y+1
							if M==0:
								X = X2
							else:
								X=(Y-B)/M
							self.createPointsFragments(X,Y)
					else:
						while(Y > Y2):
							Y=Y-1
							if M==0:
								X = X2
							else:
								X=(Y-B)/M
							self.createPointsFragments(X,Y)
				
				plt.plot(self.pointsOnX,self.pointsOnY, 'bs')

			self.plotGraph(figure, self.graphsFileNames[0][iteradorAux])

	@pyqtSlot(QVariant, QVariant, QVariant, QVariant)
	def treatLineCoordinates(self, x1, y1, x2, y2):
		x1 = int(x1) 
		y1 = int(y1)
		x2 = int(x2)
		y2 = int(y2)

		pointsArray = [
			[x1, y1],
			[x2, y2]
		]

		self.doRasterization(pointsArray)

	@pyqtSlot(QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant, QVariant)
	def treatPolygonsCoordinates(self, polygonType, x1, y1, x2, y2, x3, y3, x4 = None, y4 = None, x5 = None, y5 = None, x6 = None, y6 = None):
		polygonType = int(polygonType)
		x1 = int(x1) 
		y1 = int(y1)
		x2 = int(x2)
		y2 = int(y2)
		x3 = int(x3)
		y3 = int(y3)
		if (polygonType == 0 ):
			pointsArray = [
				[x1, y1],
				[x2, y2],
				[x3, y3]
			]
		elif (polygonType == 1):
			x4 = int(x4)
			y4 = int(y4)
			pointsArray = [
				[x1, y1],
				[x2, y2],
				[x3, y3],
				[x4, y4],
			]
		elif (polygonType == 2):
			x4 = int(x4)
			y4 = int(y4)
			x5 = int(x5)
			y5 = int(y5)
			x6 = int(x6)
			y6 = int(y6)
			pointsArray = [
				[x1, y1],
				[x2, y2],
				[x3, y3],
				[x4, y4],
				[x5, y5],
				[x6, y6]
			]
		else:
			return 0

		self.doRasterization(pointsArray)
		