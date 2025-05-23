# Mint Setup Guide

How to install `.deb` file?
> On Linux Mint, either double click the `.deb` file or:
```sh
sudo dpkg -i <package_name.deb>
```


For slightly better font rendering
```sh
sudo nvim /etc/environment
FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"
```
