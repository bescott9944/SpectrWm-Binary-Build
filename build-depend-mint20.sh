# !/BIN/BASH
#
#
#      ___ ___  ___ ____/ /______    ____ _  
#     (_-</ _ \/ -_) __/ __/ __/ |/|/ /  ' \ 
#    /___/ .__/\__/\__/\__/_/  |__,__/_/_/_/ 
#        /_/                                 
#      _                  _                                       _   _           
#     |_)     o |  _| __ | \  _  ._   _  ._   _| __ |\/| o ._ _|_  ) / \    _ |_  
#     |_) |_| | | (_|    |_/ (/_ |_) (/_ | | (_|    |  | | | | |_ /_ \_/ o _> | | 
#                                |                                                
# Script Date: 06/29/2020
# Script Creator: Bruce E. Scott
# Github: https://github.com/bescott9944
# Forums: https://www.ezeelinux.com/talk/bescott9944
#         https://forum.endeavouros.com/bescott9944
# Licensed under the GNU and MIT respectively
#
# PURPOSE Of This Script:
# This Script is for installing/building the new Spectrwm build and the
# dependencies that are needed to build the newer binary version
# of SpectrWm... Doing this build to make a manual install... 06/29/2020 -Bruce
# This script was inspired by a video from The Linux Dabbler YouTube Channel.
# His Channel: https://www.youtube.com/channel/UC3pasXoRUTKPpQaKtlJz62g
# The Video: https://www.youtube.com/watch?v=tYC7qxnjka4
#
# Change Log.
# 07/04/2020
# Made some changes to the dependencies list to work better. -Bruce
#
# NOTE: This Bash file has been limited to 80 characters. You may need edit
# the line and change the "next line break ( \ )" of the bash file to suite
# your needs!
#
# This Install dependencies list has been tested on Mint 20, 06/29/2020
#
# The otherday in a comment in said video, Daniel Olsson said:
# Nice video, sometimes i use sudo apt build-dep "packagename" in this case
# spectrwm, then it will automatically pull in everything you need to
# recompile spectrvm :)
# Wish I known this a few days ago... Lol
# UPDATE: This is not a option at this time. 07/07/2020 -Bruce
#
# Note: Some dependencies require the " -dev " versions of the dependencies and
# other do not. When dependencies are installed they will intern install their
# own dependencies too.. I don't know if this is do to Mint/Ubuntu Repos or not.
# The do the build I needed all these dependencies before the "make" part of the build
# would run with out any error in the output of the "make" and before the binary file
# would compile with out any errors In Linux Mint 20.
#
# The build that I did needed all these dependencies before the "make" part of
# the build would run with out any error in the output and before the binary
# file would compile.
# There was a lot of trial and error an a few hours of testing to produce this
# list. You mileage may vary as dependencies and files change over time.
# with that said this script is a good starting place.
# I have not tested this script on anything other than Linux Mint 20, in a VM
# for testing purpose...
#
# WARNING: USE AT YOUR OWN RISK!
# I or any of my affiliates will or will not be held responsible for any loss
# of data, software, operating systems, damage to, wiping of, altering of, and
# any other thing else that might happen using this script!
# That also includes the urges to drink lots of coffee, Rum, eating of
# junk food, and eating lots of Hot Pockets, and not to limited to the
# building of bonfires, dancing around said bonfires and howling at the MOON!
# YOU HAVE BEEN WARNED! -BES
# sudo apt install g++-multilib g++-9-multilib stterm xfonts-terminus-oblique
# xfonts-cyrillic
#
# Date: 07/09/2020
# Changed the file name to build-depend-mint20.sh
#
#-----------------------------------------------

sudo apt install suckless-tools xterm libxt6 libc6 libx11-6 libx11-xcb1 \
libx11-xcb-dev libxcb-icccm4 libxcb-icccm4-dev libxcb-keysyms1 \
libxcb-keysyms1-dev libxcb-randr0 \
libxcb-randr0-dev libxcb-util1 libxcb-xinput0 libxcb-xtest0-dev libxcb1-dev \
libxcursor1 libxcursor-dev libxft-dev libxft2-dev xfonts-terminus \
build-essential libxrandr-dev libxcb-xfixes0-dev libxpathselect-dev \
libfontconfig1-dev libfreetype6-dev libice-dev libpng-dev \
libpng-tools libpthread-stubs0-dev libsm-dev libxau-dev libxcb-render0-dev \
libxdmcp-dev libxfixes-dev libxrender-dev pkg-config uuid-dev \
x11proto-core-dev x11proto-dev  x11proto-fixes-dev xorg-sgml-doctools \
xtrans-dev zlib1g-dev libxcb-xinput-dev libxcb-xrm-dev libxt-dev \
libxpathselect1.4v5 libxpathselect-dev

