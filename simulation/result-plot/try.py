import spice3read as s3r
import os
import matplotlib as mpl
if os.environ.get('DISPLAY','') == '':
    print('no display found. Using non-interactive Agg backend')
    mpl.use('Agg')
import matplotlib.pyplot as plt

data = s3r.read('../raw-result/try.raw')
time = data["time"][0]
v = data["v(1)"][0]

plt.plot(time, v)
plt.savefig("try.png")