# Install.md

         ___ ___  ___ ____/ /______    ____ _  
        (_-</ _ \/ -_) __/ __/ __/ |/|/ /  ' \ 
       /___/ .__/\__/\__/\__/_/  |__,__/_/_/_/ 
          /_/                                 

Hello to you All!
Thanks you for looking at my project.
This is the process I followed to build the binary for installing/building the new Spectrwm build and the dependencies that are needed to build the newer binary version of SpectrWm... I am doing this build to make a manual install... 06/29/2020 -Bruce

The scripts and project was inspired by a video from The Linux Dabbler YouTube Channel. The Linux Dabbler Channel: https://www.youtube.com/channel/UC3pasXoRUTKPpQaKtlJz62g
The Linux Dabbler's Video: https://www.youtube.com/watch?v=tYC7qxnjka4 that I watched to produce this project...
# _____________________________________________________________

### This project is for AN tested on Linux Mint 20. While it may work on other Distros this has NOT BEEN TESTED with Other Distros... ###

I have tested some more and I had a issue where Spectrwm would not load from the Login screen. so I add this to the README.MD

# Known Issues
### I have had the "Make" Fail 2 times. When or IF this happens, Spectrwm will not load. To check this, go to your ~/bin folder in a or open a terminal in that folder and type specrtwm on the command line (CLI) you should get a output that states you have spectrwm 3.4.1 and another WM is running. If you do not get this output then the build had Failed... Just "Make it again, copy it to your ~/bin folder and chmod +x the file and it should now load. No guarantee this will work... ###

# Now it has come to mind, that some better install information needs to be added. #

The reason for this is because I'm thinking that some folks are not going to watch Linux Dabblers video and there needs to be a Better Overview on how to Make the Spectrwm Binary
file to start with.

With that said you will need to down the Spectrwm.zip or tar.gz file from https://github.com/conformal/spectrwm.
As of this writing the New Spectrwm 3.4.1 is under the "New Release" information tab on the right of the page. I downloaded the ZIP file.
# DO Not "Clone" the page. #
Download the spectrwm.zip file from the "Releases" Link.

After you have the download the Spectrwm Zip File, Un-Zip it into a folder to work from. I used a folder called "work" in my home directory (/home/work) to copy the downloaded
Spectrwm.zip files to.

This whole project is based on the "WORK" directory in your /home folder "/home/work"... Copy the Zip file you downloaded, to you /home/work folder and extract the zip file into
that Work Folder.
Onced Extrated, you will have a folder called "spectrwm-SPECTRWM_3_4_1", this folder will need to be renamed to "spectrwm-3.4.1" for my "after-build.sh" script to function as intended.

### PLEASE remember if you use some other directory the "after-build.sh" script WILL NOT WORK!### You will have to alter the script to you NEEDS... ###

Once you have done all that done, you need to go to that /home/work folder, either in your file manager or from a terminal to the folder which you have renamed "spectrwm-3.4.1".
( /home/work/spectrwm-3.4.1 )

From there you will find in the "spectrwm-3.4.1" folder, a folder called "linux" ( /home/work/spectrwm-3.4.1/linux ). Once there in your file manager you can right clock with your
mouse and select from the popup window "Open in Terminal" or if you are in a terminal cd to /home/work/spectrwm-3.4.1/linux, where you will run the "make" command in the terminal and
in a few seconds the Spectrwm binary will be made in the /home/work/spectrwm-3.4.1/linux folder with the other supported files. The new binary file created are Spectrwm.
The newly created files will be handled by the "after-build.sh" script once the bash file is ran.

# In order to build the new Spectrwm binary you will have to install the dependencies, this will need to be done with my "spectrwn-build-depend-mint20.sh" script!

# Please read the below additional information and manual instructions please...#

# The Story
Now after figuring out all the dependencies and building the SpectrWm file as per Linux Dabbler's video, I wanted to see if it was possible to "make"
the build and install SpectrWm on the new Linux Mint 20. Doing this in a VM was the way I wanted to do this to see if it could be done.
Well I have a new appreciation for the term " Dependency HELL "... I was running out of trial and errors too! I just kept knocking down the error's until they were all gone...
I should get a medal for the most "Trial And Errors" but I have SpectrWm shoehorned into Linux Mint 20 and it did not come from a repo but from the GitHub binaries..

This created to several hurdles to overcome.
Getting all the Dependencies was the 1st hurdle to get the binary built.
Getting SpectrWm to show up in LighDM was also the 2nd treat to get working!
After making the SpectrWm binary I copied it to my ~/bin folder and made sure to "chmod +x SpectrWm" to make it extricable and work in Linux Mint using the LightDm login
Manager to start SpectrWm.

# Things to do...

# Special Files:
I have created "spectrwn-build-depend-mint20.sh" this will install the dependencies!
I have made a Bash file called "After-Build.sh" to finish the install process. The "After-Build.sh" will copy all the files to their proper places and set the file
permissions, symlinks and make the directories that are needed and put the spectrwn.comfig in the proper place in the USER .config folder..

0. I have made a Bash file called "After-Build.sh" to finish the install process. The "After-Build.sh" will copy all the binary files to their proper places and set the file
permissions, symlinks, also make the directories that are needed, then put the (defualt)spectrwn.config in the proper place in the USER's /.config folder..

# Note you will have to edit the defualt spectrwm.config and baraction.sh files yourself to get Spectrwm and the baraction.sh to function. This is beyond the scope of this guide.#

1. Change the UN-archived file name of spectrwm-SPECTRWM_3_4_1 to the file name of spectrwm-3.4.1, from here on in this will be refereed to as spectrwm build folder.

2. There is a SpectrWm.desktop file located in the spectrwm-3.4.1/linux folder that needs to be placed/copied in the /usr/share/xsessions folder where you will also find the
cinnamon.desktop and cinnamon.desktop2 or something like that. This will let LightDm find and show the SpectrWm login option after booting the system where you hit the
little button and select what desktop you want to load!

3. NOW in the spectrwm-3.4.1/linux you will also need to copy libswmhack.so.0.0 to /usr/local/lib folder. If not, SpectrWm will complain about not finding the file when 
you start SpectrWm.

4. After making the SpectrWm binary, it will need to be copied it to the ~/bin folder and made sure to "chmod +x SpectrWm" to make it extricable.

5. After you do all of this there is one more thing that you will have to do to get Mint and LightDm to show the spectrwm boot option...
You will need to create a Symlink to the build of SpectrWm that you have coped into your ~/bin folder. You will have to place the symlink in the /bin because even though
your local ~/bin is in my path and .profile LightDm will not find SpectrWm to start it because SpectrWm is not in the boot-up path yet, so it is not found and
will not boot SpectrWm.

6. Sooo you will need to put the symlink in /bin folder and point the symlink to your SPECTRWM build that you have copied to your ~/bin folder this will let LightDm and Mint
find the symlink and load SpectrWm.

The /bin folder is where Mint has Cinnamon starting from too... So BAM! SpectrWm is loaded into LightDm ( Last Hurdle ) as a pull down option to select and load SpectrWm
or Linux Mint and when I login SpectrWm loads... NICE!

No I did not use "make install" BUT I was close... Lol

7. Oh! Now SpectrWm looks for the "spectrwm.conf" in ~.config/spectrwm Folder, Not User Home "~/ "...
It only took me a hour to figure that one out. I could get SpectrWm to load from LightDm but it keep having exceptions error about "Xlock", I don't use it,
then I remember a post that it now loads in the .config/Spectrwm folder... \:-|

WoHo! I done IT!  :-D  :-)  :-P

With that said, YES you can build SpectrWm 3.4.1 on a Linux Mint 20 install in a VM.



