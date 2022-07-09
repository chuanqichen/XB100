# XB100 Lab1

The first instruction is how to setup Virtual Machine in Windows 10 to install OS: Ubuntu 20.04.

For the MAC uses, you can download Oracle VM VirtualBox (free), Parallels Desktop for Mac, or VMWare Fusion to build virtual machine. 
Parallels Desktop for Mac: https://www.youtube.com/watch?v=EiO_CHfSn2s

The instruction "How to install Ubuntu 20.04 using Virtual Box or VMWare Fusion are uploaded here. 

For student who use Windows 10 Home Edition or some Windows, you do't have Hyper-V, you can use VirtualBox or VMWare Fusion on Windows to install Ubuntu. The instruction will be same as Apple Mac instruction here.

VirtualBox:  https://www.virtualbox.org/

# Enable copy and paste between host and ubuntu
* Inside Ubuntu terminal and run following command to install additional program
* Then shutdown and restart the Ubuntu for Copy/Paste between host and guest Ubuntu works
```
sudo apt install virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils
```
