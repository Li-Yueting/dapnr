import spice3read as s3r
import numpy as np
import os
import matplotlib as mpl
if os.environ.get('DISPLAY','') == '':
    print('no display found. Using non-interactive Agg backend')
    mpl.use('Agg')
import matplotlib.pyplot as plt

data_v1 = s3r.read('../result/test_v1.raw')
data_v3 = s3r.read('../result/test_v3.raw')
x = data_v1['time'][0]
y1 = data_v1['v(1)'][0]
y3 = data_v3['v(3)'][0]
plt.xlabel("time(ms)")
plt.ylabel("voltage(V)")
plt.plot(x*1000,y1)
plt.savefig("test_v1.png")