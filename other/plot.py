import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
import json
import random
from matplotlib import rcParams
pop_size = 60
gen_range = 11
sample_points = 20 
######################
s = 100
alpha = 0.8
# random.seed(6)
mds_list=np.zeros((gen_range, pop_size))
nl_list=np.zeros((gen_range, pop_size))
count = 0

for gen in range(gen_range):
    for id in range(pop_size):
        with open('interface/'+'gen-'+str(gen)+'-id-'+str(id)+'/layoutSum.txt', 'r') as f:
            count = count +1
            lines=f.readlines()
            for line in lines:
                if "matching_distance_score" in line:
                    mds_list[gen,id]=line.split(" ")[-1]

                if "net_total_length" in line:
                    nl_list[gen, id] = line.split(" ")[-1]
print("=======MDS=====")
for i in mds_list:
    print(min(i))
print("=======NL=====")
for i in nl_list:
    print(min(i))
max_mds = np.max(mds_list)
max_nl = np.max(nl_list)

# label_size = 20
rcParams['font.family'] = "Times New Roman"
# mpl.rcParams['ytick.labelsize'] = label_size 
# mpl.rcParams['ytick.labelsize'] = label_size 
f, ax = plt.subplots(1)
# plt.rcParams['font.family'] = 'Meiryo'
x0, y0 = mds_list[0, 0:pop_size] / max_mds, nl_list[0, 0:pop_size] / max_nl
x1, y1 = mds_list[3, 0:pop_size] / max_mds, nl_list[3, 0:pop_size] /max_nl
x2, y2 = mds_list[6, 0:pop_size] / max_mds, nl_list[6, 0:pop_size] /max_nl
x3, y3 = mds_list[9, 0:pop_size] / max_mds, nl_list[9, 0:pop_size] /max_nl
plt.scatter(x0, y0, label='gen-0', alpha=alpha, s=s)
plt.scatter(x1, y1, label='gen-3', alpha=alpha, s=s)
plt.scatter(x2, y2, label='gen-6', alpha=alpha, s=s)
plt.scatter(x3, y3, label='gen-9', alpha=alpha, s=s)
plt.legend(bbox_to_anchor=(0, 1.02, 1, 0), loc="lower left",mode="expand", borderaxespad=0, ncol=4, fontsize=14)

plt.xlabel("Normalized Matching Distance Score", fontsize=16)
plt.ylabel("Normalized Total Net Length", fontsize=16)
plt.xticks(fontsize=13)
plt.yticks(fontsize=13)
plt.tight_layout()
plt.savefig("ga-new.svg", dpi=800)
plt.show()


# best=np.zeros(26)
# mean=np.zeros(26)
# # plt.plot(x, y1, marker='o', mec='r', mfc='w')

# for gen in range(26):

#     with open('./interface/interface/summary/'+'gen-'+str(gen)+'-best.json', 'r') as f:
#         data=json.load(f)
#         best[gen]=-data['best_fitness']
#         mean[gen]=-data['mean']


# plt.plot(range(26), best, marker='o', mec='r', mfc='w')
# plt.xlabel("Generation")
# plt.ylabel("best individual")
# plt.show()

