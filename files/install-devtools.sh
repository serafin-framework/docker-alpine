#!/bin/sh
apk add --update --no-cache bash coreutils less htop zsh screen zip wget vim nano git subversion

echo 'export LC_ALL=en_US.UTF-8' >> /etc/profile
echo 'export LANG=en_US.UTF-8' >> /etc/profile
echo 'export LANGUAGE=en_US.UTF-8' >> /etc/profile
echo 'if [ -z $TERM ]; then export TERM=linux; fi' >> /etc/profile

if [ -z $TERM ]; then export TERM=linux; fi
export ZSH="/etc/zsh/oh-my-zsh";
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cat /opt/docker/zshrc >> /etc/zsh/zshrc && rm /opt/docker/zshrc
echo '' > ~/.zshrc
echo 'zsh-newuser-install() { echo '' > ~/.zshrc; }' >> /etc/zsh/zshenv