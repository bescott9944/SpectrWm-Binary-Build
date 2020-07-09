# Changelog.md
       ___ ___  ___ ____/ /______    ____ _  
      (_-</ _ \/ -_) __/ __/ __/ |/|/ /  ' \ 
     /___/ .__/\__/\__/\__/_/  |__,__/_/_/_/ 
         /_/                                 

      _                                           
     /  |_   _. ._   _   _  |  _   _    ._ _   _| 
     \_ | | (_| | | (_| (/_ | (_) (_| o | | | (_| 
                     _|            _|             


 Lead Developer: Bruce E. Scott
 Script Creator: Bruce E. Scott
 Github: https://github.com/bescott9944
 Forums: https://www.ezeelinux.com/talk/bescott9944
         https://forum.endeavouros.com/bescott9944
 Licensed under the GNU and MIT respectively

### June 28th 2020
Started the Spectrwm - Linux Mint 29 project
### -----------------------------------------------------

### July 1st 2020
Created the Github page and setup all the files.
Added the Bash files, README.MD, Install.MD and so on.
### -----------------------------------------------------

### July 2nd 2020
Added some more and updates to the instructions.
Made some file name changes.
### -----------------------------------------------------

### July 3rd
I have created "spectrwn-build-depend-mint20.sh" this will install the
dependencies! I have made a Bash file called "After-Build.sh" to finish the
install process.
### -----------------------------------------------------

### July 4th 2020
I did another VM install and made some changes to the dependencies
and made a few additions to the instructions and the build process's.
I also did another another install with the New Linux Mint 20 (Not Beta)
in a VM.
Updated all the files a bit...
### -----------------------------------------------------

### July 6th 2020
Started to make The "After-Build.sh" That will copy all the build binary files
to their proper places and set the file permissions, symlinks and to make
the directories that are needed and put the spectrwn.config in the proper
place in the USER .config folder..
### -----------------------------------------------------

### July 7th 2020
I did several more Linux Mint 20 install in a VM and so far all went well!

I also made some revisions to the text and Doc files so that they make
more sense and have more information about the project and build.

I also updated the GitHub README.MD

I also rechecked dependencies and made one change to the dependencies.

I also made a "after-build.sh" script that will finish the install and make
all of the directories, file permissions, and copy the build binary file
where they need to be and copy the default spectrwn.conf to the new
.config/spectrwn folder.

I have tested it a ton of times and it works as it should.
With that said, like most thing it works for now! :-)
### -----------------------------------------------------

### July 8th 2020
I have tested some more and I had a issue where Spectrwm would not load from
the Login screen with LightDM. so I add this to the README.MD

#### This project is for & tested for Linux Mint 20. While it may work on other Distros this has NOT BEEN TESTED with Other Distros...

#### I have had the "Make" Fail 2 times. When or IF this happens, Spectrwm will not load. To check this, go to your ~/bin folder in a or open a terminal in that folder and type ./specrtwm on the command line (CLI) you should get a output that states you have spectrwm 3.4.1 and another WM is running. If you do not get this output then the build had Failed... Just "Make it again, copy it to your ~/bin folder and chmod +x the file and it should now load. No guarantee this will work...

Also I'm updating the install.md with some better install information as I am
thinking that some folks are not going to watch Linux Dabblers video. They will
need to have a Better Overview on how to Make the Spectrwm Binary file
to start with and what is needed to do so to get it installed.
### -----------------------------------------------------

### -----------------------------------------------------

