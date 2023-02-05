import spice3read as s3r
import os
import matplotlib as mpl
if os.environ.get('DISPLAY','') == '':
    print('no display found. Using non-interactive Agg backend')
    mpl.use('Agg')
import matplotlib.pyplot as plt

data = s3r.read('../raw-result/test_all.raw')
# print(data)
print(data["time"])
count = 0
for i in data:
    count = count +1
    print(i)
    print(data[i][0][-1])
    print("+================")
print(count)