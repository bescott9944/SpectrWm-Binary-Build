# SpectrWm-Binary-Build-Github-Readme.MD
      ___ ___  ___ ____/ /______    ____ _  
     (_-</ _ \/ -_) __/ __/ __/ |/|/ /  ' \ 
    /___/ .__/\__/\__/\__/_/  |__,__/_/_/_/ 
        /_/                                 

     _   _       _        _             
    |_) |_  /\  | \ |\/| |_    _| ._ _  
    | \ |_ /--\ |_/ |  | |_ o (_| | | | 

## Overview:
This SpectrWm Manual Binary Build & Manual Install was created so Future Updates of the binary can be easily implement and with the use of symlinks,
to my ~/bin where I keep all my scripts files. I want to upgrade spectrwm without the use of the Disro's Repo's. and ease of upgrading my "your" spectrwm install.
All you have to do is build the new binary file and place it in ~/bin (In My Build)...

#### This project was designed for and tested on Linux Mint 20. While it may work on other Distros this has NOT BEEN TESTED with Other Distros...

## Known Issues:
#### I have had the "Make" Fail 2 times. When or IF this happens, Spectrwm will not load. To check this, go to your ~/bin folder in a or open a terminal in that folder and type specrtwm on the command line (CLI) you should get a output that states you have spectrwm 3.4.1 and another WM is running. If you do not get this output then the build had Failed... Just "Make it again, copy it to your ~/bin folder and chmod +x the file and it should now load. No guarantee this will work...

## Inspiration:
This project was the result of a video that The Linux Dabbler produced on 6/29/2020, the video.(https://www.youtube.com/watch?v=tYC7qxnjka4}
explained how to build the binaries and what dependencies might be needed of the build of SpectrWm.
The whole point of the video was to show how to install SpectWm without using the outdated Repo versions and use the binaries from SpectrWm's GitHub page
(https://github.com/conformal/spectrwm) and how to install it on a headless OS install where the systems boots straight in to SpectrWm.
This was a great video and got me to think, can it be done on Linux Mint 20 in a VM using LightDm login manager...

## Goals:
My goal of this project are to see if SpectrWm can be build, installed, and make it so it can be loaded using LightDm Login Manager and make the build without
using "make install" to get everything working...
Now after I spent 18 ours exploring this project, installing and testing all the dependencies needed to make this happen. I seen in the comments of
said video from Damiel Olsson that suggested another way to do the dependencies easier... What luck... :-) Just my Luck... Lol

### ........
Daniel Olsson said;
Nice video, sometimes I use sudo apt build-dep ( package name) in this case spectrwm, then it will automatically pull in everything you need to recompile
SpectrWm. :-)
### ........

While I have not tested this to see, I like the idea...

## Looked at the above suggestion...
I did looked into this on Linux Mint 20 and it would require making changes to the source.list (which is blank) and add a bunch of stuff add to the file and formatted
a curtain way and so on, so I elected to use my own Dependencies script instead of this method...

I have added my bash script I made and all the files and dependencies I used to make this project work for ME and how I got Linux Mint 20 to show
SpectrWm in the LightDm Login Menu and load SpectrWm window manager...

## Files of the project:
 Install-guide.md - 
 The install instruction

 build-depend-mint20.sh - 
 The dependencies Bash install script

 After-Build.sh - 
 The Bash script to finish the install

 my-spectrwm-building-pross-mint20.tar.gz - 
 This a compressed file of all of the files for the build process that can be downloaded.
 This will make getting all the files easier I think...

## Special Files:
I have created "build-depend-mint20.sh" this will install the dependencies!
I have made a Bash file called "After-Build.sh" to finish the install process. The "After-Build.sh" will copy all the files to their proper places and set the file
permissions, symlinks and make the directories that are needed and put the spectrwn.config in the proper place in the USER .config folder..

------------------------------------------------------

Here are some of the NOTES from the Bash Script...

Script Date: 06/29/2020, Script Creator: Bruce E. Scott, Github: https://github.com/bescott9944, Forums: https://www.ezeelinux.com/talk/bescott9944,
https://forum.endeavouros.com/bescott9944, licensed under the GNU and MIT respectively

PURPOSE Of This Script:

This is install guide and process I followed to build the binary files for installing/building the new Spectrwm build and the dependencies that are needed to build the newer
binary version of SpectrWm... I am doing this build to make a manual install... 06/29/2020 -Bruce

This script and project has been inspired by a video from The Linux Dabbler YouTube Channel. His Channel: https://www.youtube.com/channel/UC3pasXoRUTKPpQaKtlJz62g,
The Video: https://www.youtube.com/watch?v=tYC7qxnjka4

NOTE: This Bash file has been limited to 80 characters. You may need edit the line and change the "next line break ( \ )" of the bash file to suite your needs!

This Install dependencies list has been tested on Linux Mint 20, several times. 06/29/2020

Note: Some dependencies require the " -dev " versions of the dependencies and other do not. When dependencies are installed they will intern install their own dependencies too..
I don't know if this is do to Mint/Ubuntu Repos or not.

The do the build I needed all these dependencies before the "make" part of the build would run with out any error in the output of the "make" and before the binary file would
compile with out any errors.

There was a lot of trial and error and a few hours of testing to produce this list. You mileage may vary as dependencies and files change over time. with that said this script is
a good starting place. I have not tested this script on anything other than Linux Mint 20, in a VM for testing purpose...

#### WARNING: USE AT YOUR OWN RISK!

With that said, Myself or any of my affiliates will not be held responsible for any loss of data, software, operating systems, damage to, wiping of, altering of, and any other thing that might happen using this script!That also includes the urges to drink lots of coffee, Rum, eating of junk food, and eating lots of Hot Pockets, and not limited to the building of bonfires, dancing around said bonfires and howling at the MOON!
#### YOU HAVE BEEN WARNED! -BES




Lead Developer: Bruce E. Scott, Script Creator: Bruce E. Scott.

Github: https://github.com/bescott9944.

Forums: https://www.ezeelinux.com/talk/bescott9944, https://forum.endeavouros.com/bescott9944.

Licensed under the GNU 3.0

