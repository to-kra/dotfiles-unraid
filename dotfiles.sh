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
git clone git@github.com:to-kra/dotfiles-unraid.github

# install plugins
plugin install https://raw.githubusercontent.com/Squidly271/fix.common.problems/master/plugins/fix.common.problems.plg
plugin install https://raw.githubusercontent.com/dmacias72/unRAID-plugins/master/plugins/NerdPack.plg

plugin install https://raw.githubusercontent.com/gfjardim/unRAID-plugins/master/plugins/advanced.buttons.plg
plugin install https://raw.githubusercontent.com/gfjardim/unRAID-plugins/master/plugins/docker.buttons.plg
plugin install https://raw.githubusercontent.com/gfjardim/unRAID-plugins/master/plugins/preclear.disk.plg

plugin install https://raw.github.com/bergware/dynamix/master/unRAIDv6/dynamix.cache.dirs.plg
plugin install https://raw.github.com/bergware/dynamix/master/unRAIDv6/dynamix.system.info.plg
plugin install https://raw.github.com/bergware/dynamix/master/unRAIDv6/dynamix.system.stats.plg
plugin install https://raw.github.com/bergware/dynamix/master/unRAIDv6/dynamix.system.temp.plg
plugin install https://raw.github.com/bergware/dynamix/master/unRAIDv6/dynamix.system.buttons.plg
plugin install https://raw.github.com/bergware/dynamix/master/unRAIDv6/dynamix.file.integrity.plg

plugin install https://raw.githubusercontent.com/overbyrn/unraid-v6-plugins/master/ssh.plg

plugin install https://raw.githubusercontent.com/jbrodriguez/unraid/master/plugins/unbalance.plg

# dockers
# https://github.com/jbrodriguez/docker-containers/tree/templates