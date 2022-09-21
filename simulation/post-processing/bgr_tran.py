import spice3read as s3r
import os
import matplotlib as mpl
if os.environ.get('DISPLAY','') == '':
    print('no display found. Using non-interactive Agg backend')
    mpl.use('Agg')
import matplotlib.pyplot as plt

# run this file in Python 2 environment as spice3read only works with Python 2
data_bg = s3r.read('../result/post_bandgap_real_27degc_vbg.raw')
data_vdd = s3r.read('../result/post_bandgap_real_27degc_VDD.raw')
data_porst = s3r.read('../result/post_bandgap_real_27degc_porsgt.raw')
time = data_bg['time'][0]
vbg = data_bg['v(bg)'][0]
vporst = data_porst['v(porst)'][0]
vdd = data_vdd['v(vdd)'][0]
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
ax3.plot(time*1e6, vbg, 'r', label='v(bg)')
print("vbg", vbg)
ax3.set_xlabel("time(us)")
ax3.set_ylabel("voltage(V)")
ax3.legend()
plt.savefig('bgr.png')
