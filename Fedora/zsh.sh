#!/usr/bin/env bash

sudo dnf install git wget curl ruby ruby-devel zsh util-linux-user redhat-rpm-config gcc gcc-c++ make powerline vim-powerline tmux-powerline powerline-fonts 

echo "if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi" >> ~/.bashrc

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

sed '/^ZSH_THEME/ d' < ~/.zshrc > ~/.zshrc

echo "ZSH_THEME=powerlevel10k/powerlevel10k" >> ~/.zshrc

git clone https://github.com/romkatv/powerlevel10k-media.git media

cd media

mkdir ~/.local/share/fonts/pl10

find ./ -name '*.ttf' -exec cp -prv '{}' '~/.local/share/fonts/pl10/' ';'

fc-cache -v

cd ..

rm -rf media

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sudo gem install colorls

echo "alias ls='colorls --group-directories-first'" >> ~/.bashrc

sed '/^plugins=/ d' < ~/.zshrc > ~/.zshrc

echo "plugins=(firewalld git sudo zsh-syntax-highlighting zsh-autosuggestions)" >> ~/.zshrc
