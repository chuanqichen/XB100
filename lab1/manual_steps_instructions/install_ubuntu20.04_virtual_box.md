



### **Installing VirtualBox**
### Downloading
**Windows:**
1. Go to https://www.virtualbox.org/wiki/Downloads.

2. Under the section for the latest version (such as 6.1.38), click the download link for “Windows hosts”.

3. Open the installer.

4. Follow the instructions to install VirtualBox.

**Mac:**
1. Go to https://www.virtualbox.org/wiki/Downloads.

2. Under the section for the latest version (6.1.10 at the time of writing), click the download link for “OS X hosts”.

3. Open the installer and double-click the “VirtualBox.pkg” file.

4. Follow the instructions to install VirtualBox.

The first time you install VirtualBox, you may see a pop-up saying something along the lines of “System software from Oracle America was blocked”. If you see this message:
* Open System Preferences.

* Select the Security and Privacy menu.

* Click “Allow”.


### Creating the virtual machine
1. Start downloading the installer for Ubuntu 20.04.4 from https://releases.ubuntu.com/focal/ubuntu-20.04.5-desktop-amd64.iso 

2. Open VirtualBox.

3. Click the “New” button to create a virtual machine.

4. In the window that appears:
    * Specify “robot_ubuntu” for the name.

    * Leave the “Machine Folder” as-is.

    * Set the type to “Linux” and the version to “Ubuntu (**64-bit**)”. (Note that VirtualBox tries to predict these settings based on the name - you will need to correct them after you enter the name.)

    * Click Continue.

5. Set the slider for the amount of memory to half the maximum value (which should be the amount of RAM on your system) and click Continue.
    * If you have 32 Gigabytes / 32768 MB of RAM, this will be 16384 megabytes.

    * If you have 16 Gigabytes / 16384 MB of RAM, this will be 8192 megabytes.

    * If you have 8 Gigabytes / 8192 MB of RAM, this will be 4096 megabytes.

6. Select “Create a virtual hard disk now” and click Create.

7. Select “VDI” and click Continue.

8. Select “***Fixed-size***” (or "***Dynamically allocated***" if you don't have enough hard disk drive space) and click Continue.

9. Set the size to 300GB (minimal 50GB) and click Create (leave the file name and location as-is).

10. Click the Settings button.

11. Under the System tab, go to the Processor section. Set the number of cores as high as the green line reaches. Leave the other settings alone.

12. Under the Display tab, go to the Display section. Set the Video Memory setting as high as possible. Leave the other settings alone.

13. Click OK.

Once you are done, your screen should look something like this.


### Installing Ubuntu
1. Select the “robot_ubuntu” virtual machine and click Start.

2. Click the folder icon. Click “Add” and select the Ubuntu ISO file you downloaded earlier.

3. Click Choose, then click Start.

4. Once you get to the screen that says “Try Ubuntu”/”Install Ubuntu”, click the Install button.

5. If you use a custom keyboard layout, select the layout you use. Otherwise, click Continue.

6. Select “Minimal installation”, “Download updates while installing”, and “Install third-party software for graphics”. Then click Continue.

7. Select “Erase disk and install Ubuntu”. Click “Install Now”. On the pop-up, select “Continue”.
    Don’t worry about the warning - this won’t affect the rest of your computer. The installer only has access to the virtual machine you created in VirtualBox.

8. Select your local time zone on the map and click Continue.

9. Fill in your name. Set the username and the password. Select “Log in automatically” and click Continue.

10. Once the install finishes, click Restart.

11. When the screen says “Remove the installation medium”, check that the circular CD icon in the bottom bar of the VirtualBox window is gray. If not, click it and click Remove. Once the icon is gray, press Enter.

12. On the main screen, click Next on each screen until you get to the “You’re ready to go!” screen. Click Done.

13. If you see a pop-up saying “Updated software has been released”, close the window - they will be automatically installed as part of the setup process.

Your screen should look something like this when your installation is complete.


### Installing the Guest Additions
1. Go to the VirtualBox menu bar. Under the “Devices” menu, click “Insert Guest Additions CD image”.

2. If you don’t see the menu, make sure you are still in the virtual machine window.
    The first time you do this, you will see a series of prompts to download it. Just click OK at each step.

3. A popup will appear in Ubuntu. Click Run and enter your password.

4. Once the “Press Return to close this window” message appears, press Enter.

5. Restart the virtual machine by clicking the arrow in the top-right corner and clicking the Power button. Select Restart in the popup.
    Whenever you are done using VirtualBox, you should turn off the virtual machine through this menu. Instead of clicking Restart, you will click Power Off.

Congrats! You have now successfully set up your VirtualBox system. 


