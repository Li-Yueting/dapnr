import matplotlib.pyplot as plt
import numpy as np
import json

x = np.arange(0, 200, 1)
y = []
for i in range(200):
    best_file = "/home/users/lyt1314/ee372/aloe-sky130/bgr_top/interface/summary/gen-"+str(i)+"-best.txt"
    with open(best_file) as f:
        best=json.load(f)
    print(5000-best[1])
    y.append(5000-best[1])

fig, ax = plt.subplots()
ax.plot(x, y)

ax.set(xlabel='generation (#)', ylabel='total net length',
       title='Evolution Summary')

plt.savefig("200_gens_random_iseed_6.png")
plt.show()