import matplotlib as mpl
mpl.use('Agg')  
import matplotlib.pyplot as plt
from math import floor
import numpy as np

def createPointsFragments(x,y):
  xm = floor(x)
  ym = floor(y)

  arrayPointsRasterized[xm][ym] = 1

  listxp.append(xm + 0.5)
  listyp.append(ym + 0.5)
  
def polygonInside():
  counter = 0
  for j in range(len(arrayPointsRasterized[0])):
    listxp.clear()
    listyp.clear()
    counter = 0
    for i in range(len(arrayPointsRasterized)):
      if arrayPointsRasterized[i][j] == 1:
        counter += 1

      resto = counter % 2
      if resto != 0:
        arrayPointsRasterized[i][j] = 1
        createPointsFragments(i, j)

    if (counter % 2 == 0):
      plt.plot(listxp,listyp, 'bs')
  
def plot():
  plt.title('Resolution={}x{}'.format(resolucao,resolucao))
  plt.margins(x=0, y=0)
  plt.ylabel('Eixo Y', labelpad = 7)
  plt.xlabel('Eixo X', labelpad = 7)
  plt.grid(color = 'black', linestyle = '-', linewidth = 0.8)
  plt.xticks(range(-3, resolucao + 5), rotation='vertical')
  plt.yticks(range(-3, resolucao + 5))
  fig.savefig('hexagonResized120x120.png')

n = 6 #coeficiente de resolução
resolucao = 20*n

arrayPointsRasterized = np.zeros((resolucao + 1, resolucao + 1))

# RESOLUCOES: 20x20, 60x60, 120x120

# fig = plt.figure(figsize=(10, 7))

progAritim1 = 10 + ( (n - 2) - 1)*2
progAritim2 = 7 + (n - 1)*2

fig = plt.figure(figsize=(progAritim1, progAritim2))

# ARRAY TO STORE FIGURES THAT WILL BE PLOTTED
arrayPontos = [
  # RETA 01 - CRESCENTE - DeltaX > DeltaY
  # [0,5],
  # [20,20]

  # RETA 02 - DECRESCENTE - DeltaX > DeltaY
  # [3,20],
  # [18,13]

  # RETA 03 - CRESCENTE - DeltaX < DeltaY
  # [5,2],
  # [12,20]

  # RETA 04 - DECRESCENTE - DeltaX < DeltaY
  # [14,2],
  # [2, 17]

  # RETA 05 - CRESCENTE - DeltaX = DeltaY
  # [0,0],
  # [20, 20]

  # RETA 06 - DeltaY = 0
  # [2,4],
  # [20, 4]

  # RETA 07 - DeltaX = 0
  # [6,1],
  # [6, 20]
  
  # TRIANGULO 01
  # [0, 0],
  # [20,0],
  # [10,17.32]

  # TRIANGULO 02
  # [0, 0],
  # [12,0],
  # [6, 10.392]

  # QUADRADO 01
  # [0, 0],
  # [10,0],
  # [10,10],
  # [0,10],

  # QUADRADO 02
  # [0, 0],
  # [20,0],
  # [20,20],
  # [0,20],

  # HEXAGONO 01
  # [0, 5],
  # [5,0],
  # [15,0],
  # [20,5],
  # [15,10],
  # [5,10],

  # HEXAGONO 02
  [4,12],
  [4,4],
  [8,0],
  [12,4],
  [12,12],
  [8, 16],
]

# TO NOT RESIZE POLYGON, COMMENT CODE BELOW
for i in range(len(arrayPontos)):
  # IF IT IS AN HEXAGON, COMMENT CODE BELOW
  # if i == 0:
  #   continue
  arrayPontos[i][0] = arrayPontos[i][0] * n
  arrayPontos[i][1] = arrayPontos[i][1] * n

rangeLoop = len(arrayPontos)

for i in range(rangeLoop):
  X1 = arrayPontos[i][0]
  Y1 = arrayPontos[i][1]
  X = X1
  Y = Y1
  try:
    X2 = arrayPontos[i+1][0]
    Y2 = arrayPontos[i+1][1]
  except IndexError:
    X2 = arrayPontos[0][0]
    Y2 = arrayPontos[0][1]
    
  if(X2 - X1 != 0):
    deltaX= (X2-X1)
  else:
    deltaX = 0
  
  if(Y2 - Y1 != 0):
    deltaY= (Y2-Y1)
  else:
    deltaY=0
  
  if deltaX==0:
    M=0
  else:
    M = deltaY/deltaX
  B= Y-M*X
  
  listxp = []
  listyp = []

  createPointsFragments(X,Y)
  if(abs(deltaX) > abs(deltaY)):
    if (X < X2):
      while(X < X2):
        X=X+1
        Y=M*X + B
        if (X > X2):
          continue
        createPointsFragments(X,Y)
    else:
      while(X > X2):
        X=X-1
        Y=M*X + B
        
        if (X < 0 or Y < 0):
          continue
          
        createPointsFragments(X,Y)
  else:
    if (Y < Y2):
      while(Y < Y2):
        Y=Y+1
        if M==0:
          X = X2
        else:
          X=(Y-B)/M

        if (Y > Y2):
          continue
        
        createPointsFragments(X,Y)
    else:
      while(Y > Y2):
        Y=Y-1
        if M==0:
          X = X2
        else:
          X=(Y-B)/M
          
        if (X < 0 or Y < 0):
          continue
          
        createPointsFragments(X,Y)

  plt.plot(listxp,listyp, 'bs')

polygonInside()
plot()