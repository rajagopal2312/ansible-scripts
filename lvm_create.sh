#!/bin/sh
# Script to create a physical volume in LVM
echo "enter the devices to create the physical volume"
pvcreate /dev/sdb1 /dev/sdb2
echo "following confirms the pv is created"
pvs

#!/bin/sh
# Script to create a vg in LVM
echo "enter the volume group name followed by the devices to create the  volume group "
vgcreate vg1 /dev/sdb1 /dev/sdb2
echo "following confirms the volume group is created"
vgs

#!/bin/sh
# Script to create the  logical volume in LVM
echo "enter the size followed by the LV and VG name to create the  logical volume "
lvcreate -L +20G -n lv1 vg1
echo "following confirms the logical volume is created"
lvs

