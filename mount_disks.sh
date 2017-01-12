mkdir -p /mnt/disk1
set -o pipefail ; mount -t reiserfs -o noatime,nodiratime /dev/md1 /mnt/disk1 |& logger
set -o pipefail ; mount -t reiserfs -o remount,user_xattr,acl,noatime,nodiratime /dev/md1 /mnt/disk1 |& logger
mkdir -p /mnt/disk2
set -o pipefail ; mount -t reiserfs -o noatime,nodiratime /dev/md2 /mnt/disk2 |& logger
set -o pipefail ; mount -t reiserfs -o remount,user_xattr,acl,noatime,nodiratime /dev/md2 /mnt/disk2 |& logger
mkdir -p /mnt/disk3
set -o pipefail ; mount -t xfs -o noatime,nodiratime /dev/md3 /mnt/disk3 |& logger
xfs_growfs /mnt/disk3 |& logger
sync
mkdir /mnt/user
/usr/local/sbin/shfs /mnt/user -disks 14 -o noatime,big_writes,allow_other,use_ino  -o remember=0  |& logger