#!/bin/sh

##--define working variables (hardcoded for simplification)
pass='xxxx'
device=/dev/disk/by-partuuid/xxxx
bpath=/tmp/.bitlocker/xxxx
mpath=/mnt/bitlocker/xxxx

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
(mount $bpath/dislocker-file $mpath -o loop,uid=xxxx,gid=xxxx )
