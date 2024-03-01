#!/usr/bin/env bash
set -euxo pipefail

# Ensure date is correct
sudo hwclock -s

sudo -E add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt upgrade -y

sudo apt install -y \
  build-essential \
  stow \
  zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

NONINTERACTIVE=1 /home/linuxbrew/.linuxbrew/bin/brew install \
  cilium-cli \
  fzf \
  gcc \
  helm \
  hubble \
  jq \
  just \
  k9s \
  kubectl \
  kubectx \
  zoxide

$(/home/linuxbrew/.linuxbrew/bin/brew --prefix)/opt/fzf/install --all

mv ~/.zshrc ~/.zshrc.bak
stow -d ~/dotfiles --ignore=setup.sh .
