#!/bin/sh

# unmount first
umount /tmp/.bitlocker/sda4
umount /tmp/.bitlocker/sdb1
umount /mnt/bitlocker/sda4
umount /mnt/bitlocker/sdb1

# i dont care just mount my shit

##--define working variables (hardcoded for simplification)
pass=''
device=/dev/disk/by-partuuid/
bpath=/tmp/.bitlocker/sdb1
mpath=/mnt/bitlocker/sdb1


if [ ! -d $bpath ]; then
  mkdir -p $bpath;
fi

if [ ! -d $mpath ]; then
  mkdir -p $mpath;
fi

##--unlock bitlocker
(dislocker-fuse -V $device -u$pass -- $bpath &)

while [ ! -f $bpath/dislocker-file ]; do
    sleep 0.5
done

##--mount the unlocked "dislocker-file"
(mount $bpath/dislocker-file $mpath -o exec,loop,uid=1000,gid=985 )

device=/dev/disk/by-partuuid/
bpath=/tmp/.bitlocker/sda4
mpath=/mnt/bitlocker/sda4

if [ ! -d $bpath ]; then
  mkdir -p $bpath;
fi

if [ ! -d $mpath ]; then
  mkdir -p $mpath;
fi

##--unlock bitlocker
(dislocker-fuse -V $device -u$pass -- $bpath &)

while [ ! -f $bpath/dislocker-file ]; do
    sleep 0.5
done

##--mount the unlocked "dislocker-file"
(mount $bpath/dislocker-file $mpath -o exec,loop,uid=1000,gid=985 )



# xD
(mount /dev/disk/by-partuuid//mnt/sdc1)

