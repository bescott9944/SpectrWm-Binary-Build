# SpectrWm-Binary-Build
This SpectrWm Manual Binary Build / Manual Install so Future Updates of the binary can be easily implementand with the use of symlinks, without the use
of yours Disro's Repo's.
This project was the result of a video that The Linux Dabbler produced on 6/29/2020, the video.(https://www.youtube.com/watch?v=tYC7qxnjka4}
explained how to build the binaries and what dependencies might be needed fof the build of SpectrWm.
The whole point of the video was to show how to install SpectWm without using the outdated Repo versions and use the binaries from SpectrWm's Githib page
(https://github.com/conformal/spectrwm) and how to install it on a headless OS install where the systems boots stright in to SpectrWm.
This was a great video and got me to think, can it be done on Linux Mint 20 in a VM using LightDm login manager...

My goal of this project was to see if SpectrWm can be build, installed, make it so it can be loaded using LightDm Login Manager and make the build without
using "make install" to get everything working..
I am using Linux Mint 20 in a VM as the test bed... See the "install.MD"
Now after I spent 18 ours exploring this project, installing and testing all the dependencies needed to make this happen.I seen in the comments of
said video from Damiel Olsson that suggested another way to do the dependencies easier... What luck... :-) Just my Luck... Lol

For more information, See my notes on how I did the build, they are in the Install.MD!

........
Daniel Olsson said;
Nice video, sometimes i use sudo apt build-dep ( packagename) in this case spectrwm, then it will automatically pull in everything you need to recompile
SpectrWm. :-)
........

While I have not tested this to see if it works, I like the idea...
I will be adding my bash script I made and all the files and dependencies I used to make this project work for ME and how I got Linux Mint 20 to show
SpectrWm in the lightDm Login Menu and load SpectrWm window manager...


Here are some of the NOTES from the Bash Script...

Script Date: 06/29/2020,Script Creator: Bruce E. Scott, Github: https://github.com/bescott9944, Forums: https://www.ezeelinux.com/talk/bescott9944, https://forum.endeavouros.com/bescott9944, icensed under the GNU and MIT respectively

PURPOSE Of This Script:

This Script is for installing / building the new Spectrwm build and the dependencies that are needed to build the newer binary version
of SpectrWm... I am doing this build to make a manual install... 06/29/2020 -Bruce

This script has been inspired by a video from The Linux Dabbler YouTube Channel. His Channel: https://www.youtube.com/channel/UC3pasXoRUTKPpQaKtlJz62g,
The Video: https://www.youtube.com/watch?v=tYC7qxnjka4

NOTE: This Bash file has been limited to 80 characters. You may need edit the line and change the
"next line break ( \ )" of the bash file to suite your needs!

This Install dependencies list has been tested on Linux Mint 20, 06/29/2020

Note: Some dependencies require the " -dev " versions of the dependencies and other do not. When dependencies are installed they will intern install their own dependencies too.. I don't know if this is do to Mint/Ubuntu Repos or not.

The do the build I needed all these dependencies before the "make" part of the build would run with out any error in the output of the "make" and before the binary file would compile with out any errors.

There was a lot of trial and error and a few hours of testing to produce this list. You mileage may vary as dependencies and files change over time.
with that said this script is a good starting place.I have not tested this script on anything other than Linux Mint 20, in a VM for testing purpose...

WARNING: USE AT YOUR OWN RISK!

With that said, Myself or any of my affiliates will not be held responsible for any loss of data, software, operating systems, damage to, wiping of, altering of, and any other thing else that might happen using this script!That also includes the urges to drink lots of coffee, Rum, eating of junk food, and eating lots of
Hot Pockets, and not to limited to the building of bonfires, dancing around said bonfires and howling at the MOON!
YOU HAVE BEEN WARNED! -BES
