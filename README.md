# dotfiles

This repo sets up a base development environment. It's been tested
against Ubuntu on WSL.

It does the following:

* Installs several useful tools:
  * brew
  * build-essential
  * cilium
  * fzf
  * gcc
  * helm
  * hubble
  * jq
  * just
  * k9s
  * kubectl
  * kubectx
  * oh-my-zsh
  * stow
  * zoxide
  * zsh
* Sets up default .zshrc and global git configs

## Prerequisite

* Git is already installed
* SSH key has been set up in Github

## Setup

1. Log into the instance (f.e. `wsl start`)
1. Set up your SSH key

   ```bash
   mkdir -p ~/.ssh
   nano ~/.ssh/id_rsa
   ```

1. Paste your private SSH into the above file
1. Change the permissions on the file

   ```bash
   chmod 0600 ~/.ssh/id_rsa
   ```

1. Clone this repo

   ```bash
   git clone git@github.com:okamosy/dotfiles.git
   ```

1. Run the setup script

   ```bash
   ~/.dotfiles/setup.sh
   ```