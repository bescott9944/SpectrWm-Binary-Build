#!/bin/bash
#
#      ___ ___  ___ ____/ /______    ____ _  
#     (_-</ _ \/ -_) __/ __/ __/ |/|/ /  ' \ 
#    /___/ .__/\__/\__/\__/_/  |__,__/_/_/_/ 
#        /_/                                 
#         _                _                       
#    /\ _|_ _|_  _  ._ __ |_)     o |  _|    _ |_  
#   /--\ |   |_ (/_ |     |_) |_| | | (_| o _> | | 
#
#-------------------------------------------------------
# Script build Date... 7/07/2020 By Bruce E. Scott
#
# This Script is to be run after the building of the binary of SpectrWm
# to transfer the "Make" files to the Directories to where they belong. Then it creat's
# the symlinks, directories, and set the permissions needed for everthing to work.

#
# Setting ERROR Function
 set -e

# Bin Function
# Making the USER bin like this ~/bin or /home/$USER/bin
if [[ -d /home/$USER/bin ]]; then

    cp /home/$USER/work/spectrwm-3.4.1/linux/spectrwm /home/$USER/bin && cp /home/$USER/work/spectrwm-3.4.1/linux/baraction.sh /home/$USER/bin

echo -e '\tUser ~/bin Directory Excises!\n \tCopying Spectrwm and baraction.sh Files'

# Making Spectrwm and baraction.sh extricable in ~/bin folder.
   chmod +rwx /home/$USER/bin/spectrwm

   chmod +rwx /home/$USER/bin/baraction.sh

echo -e  '\tAll Files Permissions are Set' # <--- Fun Message

 else
    mkdir -p /home/$USER/bin && cp /home/$USER/work/spectrwm-3.4.1/linux/spectrwm /home/$USER/bin && cp /home/$USER/work/spectrwm-3.4.1/linux/baraction.sh /home/$USER/bin
##    mkdir -p /home/$USER/bin && cp /home/$USER/test* /home/$USER/bin/ # <---- This paths will need to be changed
echo -e '\tMade the ~/Bin Directory\n \thave Copied Spectrwm and Baraction.sh Files'

# Making Spectrwm nd baraction.sh extricable in ~/bin folder.
   chmod +rwx /home/$USER/bin/spectrwm

   chmod +rwx /home/$USER/bin/baraction.sh

echo -e '\tAll Files Permissions Set' # <--- Fun Message

fi

# Testing for xsessions dir and copying spectrWm.desktop to /usr/share/xsessions
 if [[ -d /usr/share/xsessions ]]  && [[ -f /home/$USER/work/spectrwm-3.4.1/linux/spectrwm.desktop ]]; then

    echo -e 'ENTERING Sudo Mode!\n \tYou Need to Enter Your Password to Proceed coping the Files!'
 sudo  cp /home/$USER/work/spectrwm-3.4.1/linux/spectrwm.desktop /usr/share/xsessions

 echo -e '\tCopied spectrWm.desktop! To /usr/share/xsessions Done!' # <--- Fun Message

 fi

# Checking for libswmhack.so.0.0 and copying it to /usr/local/lib
 if [[ -d /usr/local/lib ]] && [[ /home/$USER/work/spectrwm-3.4.1/linux/libswmhack.so.0.0 ]]; then

 sudo  cp -r /home/$USER/work/spectrwm-3.4.1/linux/libswmhack.so.0.0 /usr/local/lib

 echo -e '\tCopied libswmhack.so.0.0 to /usr/local/lib Done!' # <--- Fun Message

 fi

 if [[ -d /bin ]]
  then
 sudo ln -sf /home/$USER/bin/spectrwm /bin

 echo -e '\tCreated the Symlink in /bin Done!' # <--- Fun Message

 fi

 if [[ -d /home/$USER/work/spectrwm-3.4.1 ]] && [[ -f /home/$USER/work/spectrwm-3.4.1/spectrwm.conf ]]; then

    mkdir -p /home/$USER/.config/spectrwm && cp /home/$USER/work/spectrwm-3.4.1/spectrwm.conf /home/$USER/.config/spectrwm

 echo -e '\tCopied spectrwm binary to /home/USER/.config/spectrwm Done!' # <--- Fun Message

    else
        echo 'spectrwm.conf Not Found'
 fi

# END


