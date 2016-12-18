#my own stuff
cp /boot/.bash_profile /root/.bash_profile
mkdir /root/.ssh/
cp /boot/config/ssh/authorized_keys /root/.ssh/authorized_keys
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys
