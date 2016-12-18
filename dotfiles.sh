# ssh (ssh keys were copied to /boot/.ssh/ before)
mkdir /root/.ssh/
cp -R /boot/.ssh/ /root/.ssh/
eval "$(ssh-agent -s)"
ssh-add /root/.ssh/id_rsa

# install git
cd /boot/
mkdit bin
cd bin/
wget http://mirrors.slackware.com/slackware/slackware64-14.2/slackware64/d/git-2.9.0-x86_64-1.txz
installpkg git-2.9.0-x86_64-1.txz

# clone git
ssh-keyscan github.com >> ~/.ssh/known_hosts
mkdir /boot/github/
cd /boot/github/
git clone git@github.com:to-kra/dotfiles-unraid.git

# git aware prompts