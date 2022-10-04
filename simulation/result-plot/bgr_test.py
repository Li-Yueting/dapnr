import spice3read as s3r
import os
import matplotlib as mpl
if os.environ.get('DISPLAY','') == '':
    print('no display found. Using non-interactive Agg backend')
    mpl.use('Agg')
import matplotlib.pyplot as plt

data = s3r.read('../raw-result/bgr_tran_all.raw')
count = 0
name = []
value = []
with open("ic_values.txt", "w+") as f:
    for i in data:
        count = count +1
        # if not i.startswith("i"):
        f.write("+"+i+"="+str(data[i][0][-1])+"\n")
        name.append(i)
        value.append(data[i][0][-1])
        # print(data[i][0][-1])
        # print("+================")


# print(data)
"""
time = data["time"][0]
vdd = data["v(vdd)"][0]
vporst = data["v(porst)"][0]
vbgr = data["v(bgr)"][0]
fig=plt.figure()
# sub-figure 1 
ax1 = fig.add_subplot(311)
ax1.plot(time*1e6, vdd, 'b',label='v(vdd)')
ax1.set_xlabel("time(us)")
ax1.set_ylabel("voltage(V)")
ax1.legend()
# sub-figure 2 
ax2 = fig.add_subplot(312)
ax2.plot(time*1e6, vporst, 'green', label='v(porst)')
ax2.set_xlabel("time(us)")
ax2.set_ylabel("voltage(V)")
ax2.legend()
# sub-figure 3 
ax3 = fig.add_subplot(313)
ax3.plot(time*1e6, vbgr, 'r', label='v(bg)')
print("vbgr", vbgr)
ax3.set_xlabel("time(us)")
ax3.set_ylabel("voltage(V)")
ax3.legend()
plt.savefig('bgr_test.png')
# for i in data:
#     count = count +1
#     print(i)
#     print(data[i][0][-1])
#     print("+================")
# print(count)
"""