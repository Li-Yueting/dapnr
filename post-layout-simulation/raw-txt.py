import spice3read as s3r
import os
import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import seaborn as sns


# RUNNING PYTHON2
# os.system("conda activate py2")
arr = np.empty(11)
for i in range(11):
    data= s3r.read('../post_temp27_bgr_gauss'+str(i)+'.raw')
    arr[i] = data ["v(bgr)"][0][-1]
np.savetxt('bgr_data_machine_post.txt', arr, delimiter=',')

print(arr)
print(np.mean(arr))
print(np.var(arr))
"""
# RUNNING PYTHON3
# os.system("conda activate py38")
fig = plt.figure()
 
# Adding axes on the figure
ax = fig.add_subplot(111)
# load data
arr = np.loadtxt('../sims/bgr_data_machine_pre.txt', delimiter=',')
mean = np.mean(arr)
std = np.std(arr)
print("mean:", mean, "std:", std)
sns.set_style('whitegrid')
dist = sns.distplot(arr, kde = False, bins = 10)
ax.set_xlabel("Output voltage of BGR circuit (V)-machine-post")
ax.set_ylabel("Count")
# ax.text(1.15, 18, 'mean=0.962, std=0.006', style='italic' )
plt.savefig('../figure/vbgr_machine_pre_dist.png')
"""
