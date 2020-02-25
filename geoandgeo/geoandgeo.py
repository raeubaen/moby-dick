import math
import numpy as np
import matplotlib.pyplot as plt

def focal_semidist(focus_sx, focus_dx):
    c = (focus_dx[0] - focus_sx[0])/2
    return c

def center(focus_sx, focus_dx):
    return np.array([(focus_dx[0] + focus_sx[0])/2, focus_sx[1]])

def cathetus(ip, cat):
    return math.sqrt(ip**2-cat**2)

def ellisse(th, a, c, cent):
    b = cathetus(a, c)
    x = cent[0] + a*math.cos(th)
    y = cent[1] + b*math.sin(th)
    return np.array([x, y])

places = {
    "Castel S.Angelo": np.array([0, 0]),
    "Piazza S.Pietro": np.array([10, 0]),
}

l = lambda z: z[0]
focus_sx = places["Castel S.Angelo"]
focus_dx = places["Piazza S.Pietro"]

cent = center(focus_sx, focus_dx)
c = focal_semidist(focus_sx, focus_dx)
a = 8

fig,ax = plt.subplots()

N = 100
th_min = 2*math.pi/N
x, y = [], []
for i in range(N):
    p = ellisse(i*th_min, a, c, cent)
    print(f"{p[0]} {p[1]}")
    x.append(p[0])
    y.append(p[1])
plt.plot(x, y)
plt.show()
