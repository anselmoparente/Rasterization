# -*- coding: utf-8 -*-
import turtle as tt
from PyQt5.QtCore import QObject, pyqtSlot, QVariant
import matplotlib as mpl
from numpy import array
mpl.use('Agg')  
import matplotlib.pyplot as plt
from math import floor

class Rasterizacao(QObject):

	def __init__(self):
		QObject.__init__(self)
		self.originalResolution = 0,
		self.graphsFileNames = []
		self.graphResolution = [],
		self.pointsOnX = [],
		self.pointsOnY = []

	def getGraphResolutions(self, arrayPoints):

		higherNumber = abs(arrayPoints[0][0])
		for i in arrayPoints:
			for j in i:
				if abs(j) > higherNumber:
					higherNumber = abs(j)
	
		return higherNumber + 4

	def plotGraph(self, figure, fileName):
		plt.title('Resolution={}x{}'.format(self.graphResolution, self.graphResolution))
		plt.margins(x=0, y=0)
		plt.ylabel('Eixo Y', labelpad = 7)
		plt.xlabel('Eixo X', labelpad = 7)
		plt.grid(color = 'black', linestyle = '-', linewidth = 0.8)
		plt.xticks(range(0, self.graphResolution + 1), rotation='vertical')
		plt.yticks(range(0, self.graphResolution + 1))
		figure.savefig('./src/assets/' + str(fileName))

	def createPointsFragments(self, x, y):
		xm = floor(x)
		ym = floor(y)
		self.pointsOnX.append(xm + 0.5)
		self.pointsOnY.append(ym + 0.5)

	def getYByX(self, originalPoints, coeficientResolution):
		X1 = originalPoints[0][0]
		Y1 = originalPoints[0][1]
		X2 = originalPoints[1][0]
		Y2 = originalPoints[1][1]
		if(X2 - X1 != 0):
			deltaX = (X2 - X1)
		else:
			deltaX = 0
		
		if(Y2 - Y1 != 0):
			deltaY = (Y2 - Y1)
		else:
			deltaY = 0
		
		if deltaX == 0:
			M = 0
		else:
			M = deltaY/deltaX
		B = Y1 - M * X1

		newXValue = X2 * coeficientResolution
		newYValue = M * newXValue + B

		return int(newYValue)

	def doRasterization(self, pointsArray):
		resizeCoeficientsArray = [1, 3, 6]
		figure = plt.figure(figsize=(10, 7))

		for iteradorAux in range(len(resizeCoeficientsArray)):
			coeficientResolution = resizeCoeficientsArray[iteradorAux]
			# MULTIPLICA PELO COEFICIENTE DE RESOLUCAO DE PIXELS
			self.graphResolution = self.originalResolution * coeficientResolution

			for i in range(len(pointsArray)):
				X1 = pointsArray[i][0]
				Y1 = pointsArray[i][1]
				X = X1
				Y = Y1
				try:
					X2 = pointsArray[i+1][0]
					Y2 = pointsArray[i+1][1]
					if X2 < X1:
						# MANIPULACAO DO X
						X = X2
						X2 = X1
						X1 = X
						# MANIPULACAO DO Y
						Y = Y2
						Y2 = Y1
						Y1 = Y
					# MULTIPLICA PELO COEFICIENTE DE RESOLUCAO
					Y2 = self.getYByX([
						[X1, Y1],
						[X2, Y2]
					], coeficientResolution)
					X2 = X2*coeficientResolution
					# Y2*coeficientResolution
				except IndexError:
					X2 = pointsArray[0][0]
					Y2 = pointsArray[0][1]
					if X2 < X1:
						# MANIPULACAO DO X
						X = X2
						X2 = X1
						X1 = X
						# MANIPULACAO DO Y
						Y = Y2
						Y2 = Y1
						Y1 = Y
					# MULTIPLICA PELO COEFICIENTE DE RESOLUCAO
					Y2 = self.getYByX([
						[X1, Y1],
						[X2, Y2]
					], coeficientResolution)
					X2 = X2*coeficientResolution
				
				print(X, Y)
				print(X1, Y1, X2, Y2)

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
					while(X < X2):
						X=X+1
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

			self.plotGraph(figure, self.graphsFileNames[iteradorAux])

	@pyqtSlot(QVariant, QVariant, QVariant, QVariant)
	def treatLineCoordinates(self, x1, y1, x2, y2):
		x1 = int(x1) 
		y1 = int(y1)
		x2 = int(x2)
		y2 = int(y2)

		self.graphsFileNames = [
			'lineGraph1.png',
			'lineGraph2.png',
			'lineGraph3.png',
		]

		pointsArray = [
			[x1, y1],
			[x2, y2]
		]

		graphResolution = self.getGraphResolutions(pointsArray)
		self.originalResolution = graphResolution
		self.graphResolution = graphResolution
		self.doRasterization(pointsArray)