# Dotfiles
Contains config for my dev environment.
### Requirements
*|Install:*
 - git
 - GNU stow
### Installation:
```
cd ~
git clone git@github.com:Fionn-Mc/.dotfiles.git
cd ~/.dotfiles
stow .
```
If files already exist, make sure everything in repo is commited and up to date and then run the following:
```
stow --adopt .
```
