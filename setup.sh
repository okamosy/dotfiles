  #!/usr/bin/env bash
  set -euxo pipefail

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
    build-essential \
    stow \
    zsh

stow -D ~/dotfiles

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install \
    cilium-cli \
    gcc \
    helm \
    hubble \
    jq \
    just \
    k9s \
    kubectl
