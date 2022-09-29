Steps I did:
1. ```ngspice -b bgr_alpha_tran.sp ``` to get all transient data
2. ``` python bgr_test.py ``` to get the voltage data at last time point (last time point as shown in bgr_test.png)
3. edited bgr_alpha_tf.sp .nodeset values according to "ic_values.txt" and run ```ngspice -b bgr_alpha_tf.sp > run.log``` 

Note:
all files mentioned above are included in this ./share folder  
.tf running log are in run.log  
open run.log, if you search "bgr" then you can tell the voltage is still near 0.  