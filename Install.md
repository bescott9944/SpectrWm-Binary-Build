
Hello, this is the process I followed to build the binary for installing/building the new Spectrwm build and the dependencies that are needed to build the newer binary version
of SpectrWm... I am doing this build to make a manual install... 06/29/2020 -Bruce

This script  and project was inspired by a video from The Linux Dabbler YouTube Channel. The Linux Dabbler Channel: https://www.youtube.com/channel/UC3pasXoRUTKPpQaKtlJz62g
The Linux Dabbler's Video: https://www.youtube.com/watch?v=tYC7qxnjka4 that I watched to produce this project...

Now after figuring out all the dependencies and building the SpectrWm file as per the video, I wanted to see if it was possible to "make" the build and install SpectrWm
on the new Linux Mint 20. Doing this in a VM was the way I wanted to do this to see if it could be done.
Well I have a new appreciation for the term " Dependency HELL "... I was running out of trial and errors too! I just kept knocking them down till they were all gone...
I should get a medal for the most "Trial And Errors" but I have SpectrWm shoehorned into Linux Mint 20 and it did not come from a repo but from the GitHub binaries..

This created to several hurdles to overcome.
Getting all the Dependencies was the 1st hurdle to get the binary built.
Getting SpectrWm to show up in Light was also the 2nd treat to get working!
After making the SpectrWm binary I copied it to my ~/bin folder and made sure to "chmod +x SpectrWm" to make it extricable and work in Linux Mint using the LightDm login
Manager to start SpectrWm.

There is a SpectrWm.desktop located in the SPECTRWM .3.4.1/linux folder that needs to be placed/copied in the /usr/share/xsessions folder where you will also find the
cinnamon.desktop and cinnamon.desktop2 or something like that.This will let LightDm fine and show the SpectrWm login option after booting the systen where you hit the
little button and select what desktop you want to load!

NOW in the SPECTRWM .3.4.1/linux you will also need to copy libswmhack.so.0.0 to /usr/local/lib folder. If now SpectrWm will complain about not finding the file when 
you start SpectrWm.

After you doo all of this ther is one more thing you will have to do to get Mint and LightDm to show the spectrwm boot option...
You will need to creat a Symlinked to the build of SpectrWm that you have copyed into your ~/bin. You will have to place the symlink in the /bin because even though
your local ~/bin is in my path and .profile LightDm will not find SpectrWm to start it because SpectrWm is not in the bootuo path. so it is not found and
will not boot SpectrWm.

Sooo you will need to put the symlink in /bin folder and point the symlinkto your SPECTRWM build that you have copied to your ~/bin folder this will let LightDm and Mint
find the symlink and load SpectrWm.

The /bin folder is where Mint has Cinnamon too and BAM! SpectrWm is loaded in LightDm ( Last Hurdle ) as a pull down option to load SpectrWm or Linux Mint and when I
login SpectrWm loads... NICE!

No I did not use "make install" BUT I was close... Lol

Oh! Now SpectrWm now looks for the "spectrwm.conf" in ~.config/Spectrwm Folder, Not User Home "~/ "...
It only took me a hour to figure that one out. I could get SpectrWm to load from LightDm but it keep having exceptions error about "Xlock", I don't use it, then I remember
a post that it now loads in the .config/Spectrwm folder... \:-|

When I get some lunch, I will get my notes together for ya! I may just post them on my GitHub not sure but will let ya know. BuT YES it can be done... :- D
WoHo! I done IT!  :-D  :-)  :-P

With that said, YES you can build SpectrWm 3.4.1 on a Linux Mint 20 install in a VM.

