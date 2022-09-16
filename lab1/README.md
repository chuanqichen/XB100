# XB100 Lab1

## Install Virtual Machine for XB100 classes

1. Download and Install Virtual Box:  
https://www.virtualbox.org/wiki/Downloads

2. Download preinstalled XB100 Virtual Machine images:  
https://www.icloud.com/iclouddrive/0a06crdVY3BjbtG3geujcn4ww#xbots.ova

3. Importing above downloaded Virtual Machine images into VirtualBox   
![VirtualBox](vbox-none-web.png)

   In the File menu, select Import Appliance. The Appliance Import wizard is displayed in a new window, as shown in
 ![import](vbox-import-appliance-web.png)

   Click Choose, browse to the location containing the *.ovf or *.ova file of the virtual machine you just download to import, and click Open.

4. Start the Virtual Machine   
   * VM User name: xcamp  or chuanqi
   * Password: xcamp2022
   * root password: xcamp2022

# Enable copy and paste between host and ubuntu
* Inside Ubuntu terminal and run following command to install additional program
* Then shutdown and restart the Ubuntu for Copy/Paste between host and guest Ubuntu works
```
sudo apt install virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils
```
