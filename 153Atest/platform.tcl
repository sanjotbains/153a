# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\sanjotbains\Documents\153A\153Atest\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\sanjotbains\Documents\153A\153Atest\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {153Atest}\
-hw {C:\Users\sanjotbains\Documents\153A\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/sanjotbains/Documents/153A}

platform write
platform generate -domains 
platform active {153Atest}
bsp reload
bsp setdriver -ip sevenSeg_0 -driver generic -ver 3.0 3.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate
