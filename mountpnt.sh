#creating mountpoint

echo "/dev/mapper/vg1-lv1       /opt/app        ext4    defaults        0 0" >> /etc/fstab;
mount -a;
df -h
