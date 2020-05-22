sd_part="/dev/block/vold/179:1" 
kit=$sd_part/linux
img=$kit/linux.img
export PATH=$bin:/usr/bin:/usr/sbin:/bin:$PATH
export TERM=screen
export HOME=/root
export bin=/system/bin

echo "Installing script ..."


mount -o remount, rw /
busybox mount -o rw,remount /system

cd /sdcard/linux/
cp linux /system/bin
chmod 777 /system/bin/linux
cd - > /dev/null

