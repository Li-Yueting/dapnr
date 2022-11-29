import numpy as np
import matplotlib.pyplot as plt
import json

best=np.zeros(11)
mean=np.zeros(11)
# plt.plot(x, y1, marker='o', mec='r', mfc='w')

for gen in range(11):

    with open('./interface/summary/'+'gen-'+str(gen)+'-best.json', 'r') as f:
        data=json.load(f)
        best[gen]=-data['best_fitness']
        mean[gen]=-data['mean']


plt.plot(range(11), best, marker='o', mec='r', mfc='w')
plt.xlabel("Generation")
plt.ylabel("cost of best individual")
plt.savefig("cost.png")
plt.show()