import spice3read as s3r
import os
import matplotlib as mpl
if os.environ.get('DISPLAY','') == '':
    print('no display found. Using non-interactive Agg backend')
    mpl.use('Agg')
import matplotlib.pyplot as plt

data = s3r.read('TEST_amplifier_self_bias.raw')
time = data["time"][0]
va = data["v(a)"][0]
vb = data["v(b)"][0]
vout = data["v(out)"][0]
fig=plt.figure()
# sub-figure 1 
ax1 = fig.add_subplot(311)
ax1.plot(time*1e6, va, 'b',label='v(a)')
ax1.set_xlabel("time(us)")
ax1.set_ylabel("voltage(V)")
ax1.legend()
# sub-figure 2 
ax2 = fig.add_subplot(312)
ax2.plot(time*1e6, vb, 'green', label='v(b)')
ax2.set_xlabel("time(us)")
ax2.set_ylabel("voltage(V)")
ax2.legend()
# sub-figure 3 
ax3 = fig.add_subplot(313)
ax3.plot(time*1e6, vout, 'r', label='v(out)')
print("vbgr", vout)
ax3.set_xlabel("time(us)")
ax3.set_ylabel("voltage(V)")
ax3.legend()
plt.savefig('TEST_amplifier_self_bias.png')
