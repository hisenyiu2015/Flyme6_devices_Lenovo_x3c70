#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

#in rc file, starting lenovolog with class main, it will work abnormal.
#so I add the trigger.lenovo.log.sh file to trigger it. and add this delay. lenovolog will work well.
#and start logging from system boot.

#in Android 5.0, if have dev/diag will cause CTS fail VIBEUIDEVL-329
ln /dev/diag /dev/diag_back

sleep 5    
 
setprop ctl.start lenovolog
setprop ctl.start lastkmsg 
