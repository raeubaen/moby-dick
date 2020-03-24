from PIL import Image
import numpy as np

image = Image.open('finale2.png').convert('1')
matrix = np.asarray(image)

a, b = matrix.shape

for i in range(a):
  for j in range(b):
    if matrix[i][j]:
      print("0", end="")
    else:
      print("1", end="")
  print("\n", end="")
