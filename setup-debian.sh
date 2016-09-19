#!/usr/bin/env bash

# to setup a box type this at bash upon login...
#
# source <(curl -s https://raw.githubusercontent.com/jared0x90/dotfiles/master/setup-debian.sh)
#

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt update -y && apt upgrade -y

# install packages

apt install tmux git htop iftop ufw mosh weechat strace dstat mc swapspace nodejs make cmatrix build-essential proxychains privoxy screenfetch -y

# setup firewall rules

ufw allow 22
ufw allow 60000:60100/udp
ufw --force enable

# install rmate support

curl -o /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
sudo chmod +x /usr/local/bin/rmate

# install the slap editor

npm install -g slap

# install config files

curl -o ~/.gitconfig https://raw.githubusercontent.com/jared0x90/dotfiles/master/.gitconfig
curl -o ~/.iftoprc https://raw.githubusercontent.com/jared0x90/dotfiles/master/.iftoprc
curl -o ~/.nanorc https://raw.githubusercontent.com/jared0x90/dotfiles/master/.nanorc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/jared0x90/dotfiles/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/jared0x90/dotfiles/master/.vimrc

# display system details
screenfetch

echo ""
echo "quick setup included..."
echo "------------------------------------------"
echo "git htop iftop ufw mosh weechat strace dstat mc"
echo "swapsace nodejs make cmatrix rmate privoxy proxychains"
echo ""
echo "firewall rules block all except"
echo "------------------------------------------"
echo "22          *   ssh"
echo "60000-60100 udp mosh"
echo ""
