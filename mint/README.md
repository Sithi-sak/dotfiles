# Mint Setup Guide

### How to install `.deb` file?
> On Linux Mint, either double click the `.deb` file or:
```sh
sudo dpkg -i <package_name.deb>
```
### How to update system?
```sh
sudo apt update && sudo apt upgrade
```
### Essentials program to install:
```sh
sudo apt install vim git kitty luarocks fzf ripgrep
```
### Build Neovim from source:
> Follow the build guide at [Neovim](https://github.com/neovim/neovim/blob/master/BUILD.md)


For slightly better font rendering
```sh
sudo nvim /etc/environment
FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"
```
