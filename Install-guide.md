# Install-Guide.md
         ___ ___  ___ ____/ /______    ____ _  
        (_-</ _ \/ -_) __/ __/ __/ |/|/ /  ' \ 
       /___/ .__/\__/\__/\__/_/  |__,__/_/_/_/ 
          /_/                                 
      ___                        __                           
       |  ._   _ _|_  _. | | __ /__     o  _|  _    ._ _   _| 
      _|_ | | _>  |_ (_| | |    \_| |_| | (_| (/_ o | | | (_| 

Hello and thank you for looking at my project.
This is install guide and process I followed to build the binary files for installing/building the new Spectrwm build and the dependencies that are needed to build the newer
binary version of SpectrWm... I am doing this build to make a manual install... 06/29/2020 -Bruce

This SpectrWm Manual Binary Build & Manual Install guide was created so Future Updates of the binary can be easily implement and with the use of symlinks,
to my ~/bin where I keep all my scripts files. I want to upgrade spectrwm without the use of the Disro's Repo's. and ease of upgrading my "your" spectrwm install.
All you have to do is build the new binary file and place it in ~/bin (In My Build)...

The scripts and project was inspired by a video from The Linux Dabbler YouTube Channel. The Linux Dabbler Channel: https://www.youtube.com/channel/UC3pasXoRUTKPpQaKtlJz62g
The Linux Dabbler's Video: https://www.youtube.com/watch?v=tYC7qxnjka4 that I watched to produce this project...
## ________________________________________________

### This project was designed for and tested on Linux Mint 20. While it may work on other Distros this has NOT BEEN TESTED with Other Distros...

I have tested some more and I had a issue where Spectrwm would not load from the Login screen. so I add this to the README.MD

## Known Issues
### I have had the "Make" Fail 2 times. So When, or If this happens, Spectrwm will not load. To check this, go to your ~/bin folder in a or open a terminal in that folder and type specrtwm on the command line (CLI) you should get a output that states you have spectrwm 3.4.1 and another WM is running. If you do not get this output then the build had Failed... Just "Make it again, copy it to your ~/bin folder and chmod +x the file and it should now load. No guarantee this will work...

### Now it has come to mind, that some better install information needs to be added.

The reason for this is because I'm thinking that some folks are not going to watch Linux Dabblers video and there needs to be a Better Overview on how to Make the Spectrwm Binary
file to start with.

With that said you will need to down the Spectrwm.zip or tar.gz file from https://github.com/conformal/spectrwm.
As of this writing the New Spectrwm 3.4.1 is under the "New Release" information tab on the right of the page. I downloaded the ZIP file.
## DO Not "Clone" the page.
Download the spectrwm.zip file from the "Releases" Link.

After you have the download the Spectrwm Zip File, Un-Zip it into a folder to work from. I used a folder called "work" in my home directory (/home/user-name/work) to copy the downloaded Spectrwm.zip files to.

This whole project is based on the "WORK" directory in your /home folder "/home/user-name/work"... Copy the Zip file you downloaded, to you /home/work folder and extract the zip file into that Work Folder.

Once Extracted, you will have a folder called "spectrwm-SPECTRWM_3_4_1", this folder will need to be renamed to "spectrwm-3.4.1" for my "after-build.sh" script to function as intended.

Now run the bash script I created called "build-depend-mint20.sh", this will install all the dependencies that will be needed to build the binary files.

### PLEASE remember if you use some other directory other than /home/user-name/work the "after-build.sh" script WILL NOT WORK! You will have to alter the script to you NEEDS...

Once you have all that done, you need to go to the /home/user-name/work folder, either in your file manager or from a terminal, then go to the folder which you have renamed "spectrwm-3.4.1".
( /home/user-name/work/spectrwm-3.4.1 )

From there you will find in the "spectrwm-3.4.1" folder, a folder called "linux" ( /home/user-name/work/spectrwm-3.4.1/linux ). You will need to be in the "spectrwm-3.4.1/linux" FOLDER. Once there in your file manager you can right clock with your
mouse button and select from the popup window "Open in Terminal" or if you are in a terminal cd to /home/user-name/work/spectrwm-3.4.1/linux, once again you need to be in the "spectrwm-3.4.1/linux" FOLDER where you will run the "make" command in the terminal. Then in a few seconds the Spectrwm binary will be bulit in the /home/user-name/work/spectrwm-3.4.1/linux folder with the other supported files. The new binary file created are in the spectrwm-3.4.1/linux FOLDER.
The newly created files will be handled by the "after-build.sh" script and placed where they need to be once the after-build.sh bash file is ran.

### In order to build the new Spectrwm binary you will have to install the dependencies, this will need to be done with my "build-depend-mint20.sh" script!
### Please read the below additional information and manual instructions please...

## The Story
Now after figuring out all the dependencies and building the SpectrWm file as per Linux Dabbler's video, I wanted to see if it was possible to "make"
the build and install SpectrWm on the new Linux Mint 20. Doing this in a VM was the way I wanted to do this to see if it could be done.
Well I have a new appreciation for the term " Dependency HELL "... I was running out of trial and errors too! I just kept knocking down the error's until they were all gone...
I should get a medal for the most "Trial And Errors" but I have SpectrWm shoehorned into Linux Mint 20 and it did not come from a repo but from the GitHub binaries..

This created to several hurdles to overcome.
Getting all the Dependencies was the 1st hurdle to get the binary built.
Getting SpectrWm to show up in LightDm was also the 2nd treat to get working!
After making the SpectrWm binary I copied it to my ~/bin folder and made sure to "chmod +x SpectrWm" to make it extricable and work in Linux Mint using the LightDm login
Manager to start SpectrWm.
## ________________________________________________

## Things to do...

## Created Special Files:
I have created a Bash file called "build-depend-mint20.sh" this will install the dependencies needed to make the building process!
I have created a Bash file called "After-Build.sh" to finish the install process. The "After-Build.sh" will copy all the binary files to their proper places and set the file
permissions, symlinks and make the directories that are needed, then put the (default)spectrwn.config in the proper place in the USER's home .config folder..

### Note you will have to edit the default spectrwm.config and baraction.sh files yourself to get Spectrwm and the baraction.sh to function. This is beyond the scope of this guide.

## Manual Way if You like!
1. Change the UN-archived compressed file name of spectrwm-SPECTRWM_3_4_1 to the file name of spectrwm-3.4.1, from here on in this will be refereed to as spectrwm build folder.

2. There is a spectrwm.desktop file located in the spectrwm-3.4.1/linux folder that needs to be placed/copied into the /usr/share/xsessions folder where you will also find the
cinnamon.desktop and cinnamon.desktop (software rendering), The files will Not have .desktop after then, it is masked I think. Doing this will let LightDm find and show
the SpectrWm login option after booting the system where you hit the little button and select what desktop you want to load!

3. Now you will find in the spectrwm-3.4.1/linux folder called libswmhack.so.0.0, you will also need to copy it to /usr/local/lib folder. If you do not, SpectrWm will complain
about not finding the file when you start SpectrWm.

4. After making the SpectrWm binary, it will also need to be copied to the ~/bin folder and make sure to "chmod +x SpectrWm" to make it extricable.

5. After you do all of this, there is one more thing that you will have to do to get Mint and LightDm to show the spectrwm boot option...
You will need to create a Symlink to the build of SpectrWm that you have coped into your ~/bin folder. You will have to place the symlink in the /bin because even though
your local ~/bin is in my path and .profile LightDm will not find SpectrWm to start it because SpectrWm is not in the boot-up path yet, so it is not found and
will not boot SpectrWm.
You can create the symlink in the terminal by issuing the "ln -sf ~/bin/spectrwm /bin/specrtwm" command, this will create a symlink of the ~/bin/specrtwm to the /bin folder..

6. You will need to make sure that the symlink is in the /bin folder and that it points to your SPECTRWM build that you have copied to your ~/bin folder. checking this will
insure that LightDm and Mint find the symlink and load Spectrwm.
The /bin folder is also where Mint has all the Cinnamon files starting from too... Logout and select the pull down on the LightDm menu and select Spectrwm and BAM!
SpectrWm is loaded into LightDm menu ( Last Hurdle ) as a pull down option to select and load SpectrWm or Linux Mint and when I login SpectrWm loads... NICE!

No I did not use "make install" BUT I was close... Lol

7. Oh! Now SpectrWm looks for the "spectrwm.conf" in /home/user-name/.config/spectrwm Folder, Not User Home "/home/use-name "...
It only took me a hour to figure that one out. I could get SpectrWm to load from LightDm but it keep having exceptions error about "Xlock", I don't use it,
then I remember a post that "spectrwm.conf" is now loads in the .config/Spectrwm folder... \:-|

WoHo! I done IT!  :-D  :-)  :-P

With that said, YES you can build SpectrWm 3.4.1 on a Linux Mint 20 install in a VM.



Lead Developer: Bruce E. Scott

Script Creator: Bruce E. Scott

Github: https://github.com/bescott9944

Forums: https://www.ezeelinux.com/talk/bescott9944

Forums: https://forum.endeavouros.com/bescott9944

Licensed under the GNU and MIT respectively!
