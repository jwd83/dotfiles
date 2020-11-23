#!/usr/bin/env bash

# to setup a box type this at bash upon login as root...
#
# source <(curl -s https://raw.githubusercontent.com/jwd83/dotfiles/master/setup-ubuntu.sh)
#

# recent golang per http://stackoverflow.com/a/36171900
add-apt-repository ppa:ubuntu-lxc/lxd-stable

# install packages
apt-get update
apt-get upgrade -y
apt-get install tmux git htop iftop ufw mosh weechat strace dstat mc swapspace cmatrix golang -y

# setup firewall rules

ufw allow 22
ufw allow 60000:60100/udp
ufw --force enable

# install rmate support

curl -o /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
sudo chmod +x /usr/local/bin/rmate

# install config files

curl -o ~/.gitconfig https://raw.githubusercontent.com/jwd83/dotfiles/master/.gitconfig
curl -o ~/.iftoprc https://raw.githubusercontent.com/jwd83/dotfiles/master/.iftoprc
curl -o ~/.nanorc https://raw.githubusercontent.com/jwd83/dotfiles/master/.nanorc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/jwd83/dotfiles/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/jwd83/dotfiles/master/.vimrc

echo ""
echo "quick setup included..."
echo "-----------------------------------------------"
echo "git htop iftop ufw mosh weechat strace dstat mc"
echo "swapsace make cmatrix rmate"
echo ""
echo "firewall rules block all except"
echo "-----------------------------------------------"
echo "22          *   ssh"
echo "60000-60100 udp mosh"
echo ""
