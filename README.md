dotfiles
========

My dotfiles - 27 Apr 2015

Based on http://github.com/gtback/dotfiles


Setting up Xubuntu 14.04
=======================

```sh
sudo add-apt-repository ppa:fkrull/dead-snakes
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:pi-rho/dev
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential cmake colordiff curl git openssh-server python-pip terminator tmux vim vim-gnome zxclip zsh 

cd $HOME
ssh-keygen -t rsa
```
Upload ~/.ssh/id_rsa.pub to GitHub.
```sh
git clone https://github.com/ptcNOP/dotfiles.git
python dotfiles/setup_env.py
source dotfiles/setup_vim.sh

cd $HOME/.vim/bundle/YouCompleteMe
./install

cd $HOME
chsh -s `which zsh`
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
  
mkdir -p .cache/wheel .cache/pip
sudo pip install pep8 pyflakes pylint tmuxp virtualenvwrapper

mkdir src
cd src
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized
gnome-terminal-colors-solarized/install.sh

git clone https://github.com/Lokaltog/powerline.git
pip install --user -e powerline

git clone https://github.com/Lokaltog/powerline-fonts.git
```
Install `~/src/powerline-fonts/SourceCodePro/Sauce Code Powerline Medium.otf` and configure the Terminal application to use it.

Log out and back in to ensure changes have taken effect.
