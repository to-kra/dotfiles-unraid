## 1) generate SSH keys on your client machine: 
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

## 2) add generated key to your client:
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

## 3) copy generated public key to your UNRAID server using: 
```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub root@tower
```

Then login to your UNRAID over SSH and:
## 4) Copy [b]authorized_keys[/b] from root user home to flash using:
```bash
cp /root/.ssh/authorized_keys /boot/config/ssh/
```

## 5) edit [b]/boot/config/go[/b] on flash and add this line:
```bash
mkdir /root/.ssh/
cp /boot/config/ssh/authorized_keys /root/.ssh/authorized_keys
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys
```

By this method you will have accessible SSH connection to your UNRAID over keys you generated even after UNRAID restarts.
