# How to Root SuperNote A6 X2 Nomad Guide
A short tutorial on how to root SuperNote device on Windows OS PC. Other OS may or may not work or somewhat similar. The guide below should work more or less with the current firmware (3.18.29) on Supernote A6X2 Nomad.<br>
This fully detailed step by step guide include:

* [How to root](#how-to-root-sn)
* [How to unroot](#how-to-unroot---stock-sn)
* [Troubleshooting](#troubleshooting)
* [References](#references)

⚠**Disclaimer:** It is possible that you may brick your device. Proceed at your own risk, and accept full responsibility. I cannot be held responsible for any problems that arise!

### **Tested:**

| Supernote A6 X2 Nomad | Root Execution Date | Root Status |
| --------------------- | ------------------- | ----------- |
| Chauvet 3.20.29       | 15/11/2024          | Successful  |
| Chauvet 3.19.29       | Did not attempt     | -           |
| Chauvet 3.18.29       | 15/08/2024          | Successful  |
| Chauvet 3.17.29       | 10/08/2024          | Successful  |
| Chauvet 3.16.27       | 26/03/2024          | Successful  |
* Windows OS (Windows 10 and 11).
* Last working as of 15 Nov 2024.

[Changelog for Nomad - Supernote](https://support.supernote.com/en_US/change-log/changelog-for-a6-x2-nomad)

### **Not Tested:**

* MacOS/Linux/ChromeOS
* Other Supernote model(s)

### **Prerequisite:**
* IT Skillset: Moderate to Advanced
* Tablet: Supernote A6 X2 Nomad
* Duration: 20 minute to 1 hour (Depending on your IT skill level).
* Desktop PC / Laptop
* OS: Windows 10 & Windows 11
* USB cable
* SN Version: 
   * Latest: Chauvet 3.18.29 (As of 15/08/2024)
   * Past version: Chauvet 3.16.27, Chauvet 3.17.29 (All worked)
* Revision 3.17.29 allow users to enable Sideloading option in Settings->Security & Privacy.
* For Rev 3.16.27 and under.
   * Device Sideloaded enabled and activated Basic knowledge of how to sideload. Some steps/guide may be outdated. [https://www.reddit.com/r/Supernote/comments/1bfz4o0/how\_to\_sideloading\_on\_a6\_x2\_guide/](https://www.reddit.com/r/Supernote/comments/1bfz4o0/how_to_sideloading_on_a6_x2_guide/)

### **Issues:**

* \[BUG\] Sometimes Windows does not recognise SN (3.17.29/3.18.29) device for some reason. ADB USB driver comes and go. Simple fix is to plug into USB 2 Black Port at the back of your PC Tower. It is a known bug if you plug into the front USB 3.0 front Tower PC.-Refer to Troubleshooting section.

### **Notes:**

* If an SN device is initially rooted and then updated to a new revision, it will lose its root access and you must root the device again. This is because standard updates typically remove root access, so users must reapply the root process after updating the device. To keep root status contained, you turn off SN Auto Updates but you will run into risks of losing nice features and security, performance etc. \[Not Recommended\]

### **Pre-download files:**

**\* SuperNote firmware**  
Direct Link:  
[https://support.supernote.com/change-log/how-to-update-your-supernote](https://support.supernote.com/change-log/how-to-update-your-supernote)

Find it manually on website:  
[https://supernote.com](https://supernote.com)  
Click Menu->Support. Under Other heading, click Changelog then click "How to Update Your Supernote?" OR search in the text box Firmware and click "How to Update Your Supernote?" search results.

**\*** **MagisK** v27.0 or latest  
[https://github.com/topjohnwu/Magisk/](https://github.com/topjohnwu/Magisk/)

**\* F-Droid (Aurora Store similar to Google Play Store)**  
Need to install this in order to install CX File Explorer which is needed for Step 8.  
(Can install other File Manager. CX File Explorer is rated best and used common)  
Link: [F-Droid - Free and Open Source Android App Repository](https://f-droid.org/en/)

\* **Android SDK**. Option 1 or Option 2 or Option 3.


**Option 1)**  
ADB & Fastboot++ (All in one installer). Install latest ADB and Fastboot files without installing entire Android SDK package.  
Includes:  
\* Installer includes Universal ADB driver (Tick at end of setup wizard).  
\* Tick (Add to System Path Environment)\[Optional\]. This helps you to add the environment variables in Windows. You will be able to type adb devices without .\\adb devices as it will be recognise in your system)  
Source: [K3V1991/ADB-and-FastbootPlusPlus: A small Application for Windows that allows you to install the latest Version of ADB and Fastboot Files on the Computer without installing the entire Android SDK Package + Toolkit & Commands (github.com)](https://github.com/K3V1991/ADB-and-FastbootPlusPlus)  
(If you are paranoid and don't trust random developers on the internet, then go option 3).

**Option 2)**  
ADBKit (Does not install Android SDK package on your system, just runs batch file within the folder. Pretty much similar to Option 3).  
Source: [K3V1991/ADBKit: Pure ADB (Android Debug Bridge) with Batch Script to easily open a CMD Window (github.com)](https://github.com/K3V1991/ADBKit)  
(If you are paranoid and don't trust random developers on the internet, then go option 3).

**Option 3)**  
Old school way. Official Android SDK platform tools.   
Run ADB within this folder. The folder can be deleted once completed.  
Source: [SDK Platform Tools release notes  |  Android Studio  |  Android Developers](https://developer.android.com/tools/releases/platform-tools)

**Steps - Root Commands Supernote**  
Note: This is based on Option 3. However all commands should work. If you have use either Option 1 or 2 then no need to put “.\\” infront of all commands below.  
Examples:  
**Option 1/2**  
`adb devices`

**Option 3** <br>
`.\adb devices`  
 

## **\[HOW TO ROOT SN\]**
[**`^ back to top`**](#how-to-root-supernote-a6-x2-nomad-guide)

**Step 0:**  
\[SN\] Ver: 3.18.29.   
On SN device. Go to Settings →Security & Privacy →Sideloading: Tick On. 

**Step 1:**  
\[PC\] Windows Desktop

In the folder platform tools, **hold left shift key + right click** in the open space and click “Open Powershell window here” (may differ in different Windows OS version).

![image](https://github.com/user-attachments/assets/68de5688-2dbb-4452-95ea-1e2d5785721f)


**Step 1A:**   
\[PC\] Windows Powershell terminal will open from that directory (platform tools) (You will need to open Powershell in this folder or else the Powershell terminal won't able to open adb.exe).   
Pre-check to ensure the device is detected and working.  
Type in the terminal:  
`​.\adb devices​`

The terminal will display:​

    List of devices attached
    SNXXXXXXXXX device​

![image](https://github.com/user-attachments/assets/0f574cee-dc63-48ab-9bd4-6a9e5225f33e)


Make sure it says device after SNXXXXXX, if it says offline. It means there is some issues with the USB cable even though it is recognised. You won't be able to install apps as it is not connected. Refer to Troubleshooting section regarding USB.

**Step 2:**

\[PC\] Download MagisK file from the website above (Ensure it is the correct website, not a dodgy copy).   
Copy and paste Magisk-v27.0.apk into platform-tools folder.

![image](https://github.com/user-attachments/assets/b220c266-3ecb-49b3-a33f-b9c12aeb0f07)


**Step 2A:**   
\[PC\] To install Magisk via Windows Powershell. This will install Magisk app from your PC into SN via USB cable.

In Powershell, type:

`​.\adb install Magisk-v27.0.apk​`

If successfully, you should see:

`​Performing Stream Install Success​`

**Step 3:**  
\[PC\] Assuming you have downloaded the firmware files from official SN website. Extract the file and copy the **boot.img** into platform-tools folder.

![image](https://github.com/user-attachments/assets/cb0c3fe7-9224-41bf-b55e-86c2d21542ac)


**Step 4:**  
\[PC\] You will need to install a File Manager for Step 8.   
You can sideload Aurora Store to install CX File Explorer (2 Steps)

OR

You can download CX File Explorer from APKMirror (1 Step).  
\[PC\] In Powershell (assuming your SN device is still connected). Type command to sideload/install CX File Explorer.  
File name will be long (com.cxinventor.file.explorer\_2.3.2-232\_minAPI21(nodpi)\_apkmirror.com.apk). You can rename filename for simplicity e.g cxf.apk.   
`.\adb install cxf.apk`

If typed correctly, you will see Success. 

![image](https://github.com/user-attachments/assets/4dfbd4a1-c5f1-4882-854d-2170e74b0e76)


**Step 5:**  
\[SN\]  Check in SN device to see if the file explorer has been installed correctly.   
If successful, you should CX File Explorer showing Main Storage, Downloads, Apps etc.

Slide your finger along side of the righthand side of the tablet. Menu should pop up from the right. Find CX File Explorer, if can't find then click More.

OR

Swipe menu from the top to bottom, select settings (the gear icon) → Apps → Supernote App Store → CX File Explorer → Open

**Step 6:** (**Make sure Step 3 is done**)

\[PC\] This command will copy boot.img from platform-tools folder on PC into Supernote device main root folder.

Type in Powershell terminal:  
`​.\adb push ".\boot.img" "/storage/emulated/0"​`

**Step 7:**

\[SN\] On the Supernote device, open the MagisK app.

​*Settings -> Apps -> Supernote App Store -> MagisK -> Open​.*

**Step 8:**

\[SN\] With the Magisk opened in Supernote. Select the Install button for MagisK on the right.

Choose "Select and Patch a file". You will be in File explorer. Select **Main Storage** then in the root directory, you should see boot.img at the bottom. Scroll down to find it.  
Select boot.img and hit Select/OK.  
Notes: Will require to sideload a file manager e.g CX File Explorer works well.

**Step 9:**

\[SN\] You should see an Installation page on the SuperNote device:

    ​Installation
    Done!
    -Device platform: arm64-v8a 
    -Installing: 29.0 (27000) 
    -Copying image to cache 
    -Unpacking boot image 
    -Checking ramdisk status 
    -Stock boot image detected 
    -Patching ramdisk 
    -Pre-init storage partition: cache 
    -Repacking boot image​
    ​*************************** 
    Output file is written to 
    /storage/emulated/0/Download/magisk_patched-27000_SKTPT.img 
    **************************​
    ​-All done!​​​

![image](https://github.com/user-attachments/assets/8a20e4cf-cea4-4316-b69e-5f662a172f9f)


**Step 10:**

\[SN\] In Supernote device, open file manager (CX File Explorer), go to Main Storage then Download folder (Or can click Downloads icon).  
Rename magisk\_patched-27000\_SKTPT.img to boot.img  
Note: For simplicity later on.​​ Preference, easier to type and select this file later on.

![image](https://github.com/user-attachments/assets/d6c1a8ff-ebc5-4216-9724-35804d7b8b88)

​​**Step 11:**

\[PC\] On Windows Desktop, in the platform-tools folder, create a folder temp e.g stock or whatever you folder.  
Move the current boot.img file within the platform-tools into stock folder (Just a backup of the stock boot.img file, just in case).

**Step 12:**  
\[PC\] This will copy the patched boot.img from Supernote device into Windows PC folder.

Go back to Windows Powershell and type:  
`​.\adb pull "/storage/emulated/0/Download/boot.img" "X:\platform-tools_r35.0.0-windows\platform-tools"​`

Replace X: to whatever drive that the actual folder is for platform-tools.  
e.g if the folder is on E drive then it should be:

​`.\adb pull "/storage/emulated/0/Download/boot.img" "E:\platform-tools_r35.0.0-windows\platform-tools"​`

You will see it do it's magic, copying files from the Supernote device onto your Windows PC - platform-tools folder.

**Step 13:**

\[PC\] To reboot Supernote, type reboot command in Windows Powershell as below:  
`​.\adb reboot bootloader​​`  
Tablet should reboot and should see FASTBOOT MODE screen

type below to check if device is detected.  
`​.\fastboot devices​​`

You should see:  
​`SNXXXXXXXXX fastboot​​`

**Step 14:**

\[PC\] This will boot the patched boot.img file you patched via MagisK in SN device (from Step 8 - 10) from PC (Step 12).

In Powershell. Type (Change the XXXXXXX before proceeding):  
`​.\fastboot flash:raw boot "X:\XXXXXXXXX\platform-tools_r35.0.0-windows\platform-tools\boot.img"​`

If successful, you will see:

`​Sending 'boot_a' (30898 KB) OKAY [ 0.973s]​`

`​Writing 'boot_a' OKAY [ 0.427s]​`

**Step 15:**

\[PC\] Type in the Powershell terminal to reboot SN device:

`​.\fastboot reboot​`

or alternatively, hold power button on the Supernote Device to force reboot.

**Step 16:**

\[SN\] Once SN device is loaded, go open Magisk app in Supernote device.  
You should see MagisK installed with the version 27.0 (27000).​

![image](https://github.com/user-attachments/assets/7a6518db-26ee-4bac-a6e0-07bf66947452)

​**Step 17:**

\[SN\] You should see a pop up message stating Requires Additional Setup.  
Hit OK to reboot.

You will see Supernote starting screen.  
After finishing loading, open Magisk app again.  
There should be no popup message prompt.

**Step 18:**

To confirm if the SN device is rooted.  
\[SN\] Download app called "Root Checker" in the app store (Aurora Store - unofficial FOSS client alternative to Google Store).  
Aurora Store: [F-Droid - Free and Open Source Android App Repository](https://f-droid.org/en/)  
Follow **Step 2A** to install F-Droid (Aurora Store) via Windows Powershell Terminal.

[Root Checker - Apps on Google Play](https://play.google.com/store/apps/details?id=com.joeykrim.rootcheck&hl=en&gl=US)  
Click Verify Root Button and once done, it should say "Congratulations! Root access is properly installed on this device!"

![image](https://github.com/user-attachments/assets/ed7c2c96-0fe8-446f-91bc-527a4f424984)
![image](https://github.com/user-attachments/assets/27c1619e-f175-4c53-a1ce-37a94b332b88)
 

**Step 19:**

Congrats! You have successfully rooted your Supernote device. Woooooo!

=========================================================

## **\[HOW TO UNROOT - Stock SN\]**
**[`^ back to top`](#how-to-root-supernote-a6-x2-nomad-guide)** <br>
Easy mode is to wait for next SN firmware updates. It will remove root function from your SN by default during update installation process.  
Or if you can't wait... then follow the steps as below.

**Step 0:**  
Assuming you already gone through the steps above and somewhat levelled up your IT skill.

**Step 1:**  
Open Magisk and hit Uninstall. It is easy as that.  
It will do it's thing. SN wil attempt to restart on it's own once completed.

![image](https://github.com/user-attachments/assets/99d25d60-1505-4a50-a8d8-813edd734a5e)

**Step 2:**  
\[SN\] Open Root Checker to ensure SN is unrooted. Click Verify Root.

![image](https://github.com/user-attachments/assets/e927a849-bebf-4595-a64e-56bfe3b1b46f)

**Step 3:**   
Congrats! You have successfully unrooted your Supernote device. Boooo!

Assuming you change your mind and kept all the files in [How to Root](#how-to-root-sn) section, you can go straight to Step 13 and onwards. Fast track to root the SN device.

## Troubleshooting<br>
**[`^ back to top`](#how-to-root-supernote-a6-x2-nomad-guide)** <br>
**T1)** If​ SN device is not recognised in Device Manager and errors popping up. adb device command doesnt work.

\[PC\] Open Device Manager.  
You will notice an exclamation mark next to USB device. Observe when you do the following steps below.  
\[SN\] Turn off Sideloading. (Turn it off if you have it on with USB connected via PC).  
Go to Settings →Security & Privacy →Sideloading: Tick off then On.

\[PC\] With the same Powershell/Terminal opened (with SN device USB connected):  
`fastboot devices`

then

\[SN\] Go to Settings →Security & Privacy →Sideloading: On.  
\[PC\] Visual check in Device Manager. You will see Supernote Nomad (or other model) device.  
\[PC\] If you can see your SN device in Device Manager. Type in Powershell/Terminal window to confirm:  
`adb devices`  
You should see   
`List of devices attached`  
`SNXXXXXXXXX device​`

It should look like this in Device Manager.<br>
![image](https://github.com/user-attachments/assets/ad88ec6e-0868-41e3-bbe7-aa84b3e63608)


If it doesn't work then try the following solutions below.

**T2)** Use a different USB cable.

**T3)** Try a different USB port. Something so simple yet so stupid. I guess these devices are not liking new USB protocol. I hope you have USB 2.0 (Black Colour Ports or else gg). This establish a good connection between your PC and SN device.  
USB Port 2.0 (Black Colour) - Works perfect.  
USB Port 3.0 (Blue Colour). I mean you can but test your luck, it may fail at times.  
Also, try connecting to the USB ports the back of the PC tower, not the front of your PC Tower. It appears the front USB (Usually USB 3.0 tend to fails and not reliable.

**T4)** Reinstall ADB driver.  
[Get the Google USB Driver  |  Android Studio  |  Android Developers](https://developer.android.com/studio/run/win-usb)

**T5)** Use another PC/Laptop.

### **References:**  
**[`^ back to top`](#how-to-root-supernote-a6-x2-nomad-guide)** <br>
How to sideload Supernote A6X2 (3.16.27).  
[https://www.reddit.com/r/Supernote/comments/1bfz4o0/how\_to\_sideloading\_on\_a6\_x2\_guide/](https://www.reddit.com/r/Supernote/comments/1bfz4o0/how_to_sideloading_on_a6_x2_guide/)

**Useful Links:**  
[I've been testing out some android apps on the Nomad for a while and here are my findings. If you have any you'd like to see tested out just lmk, I will probably do a part 2! : ](https://www.reddit.com/r/Supernote/comments/1eqn41y/ive_been_testing_out_some_android_apps_on_the/)

[What is everyone sideloading? : ](https://www.reddit.com/r/Supernote/comments/1b4y578/what_is_everyone_sideloading/)

**Changelog:**  
**22/08/24:** <br>
\* Fixed minor formatting<br>
\* Convert my Guide from Reddit to Github https://www.reddit.com/r/Supernote/comments/1erbjno/how_to_root_supernote_a6_x2_nomad_guide/

**15/08/24:** 
\* SN updated to latest 3.18.29.  
\* Updated steps 4/5/17 and minor formatting and commands.  
\* Troubleshooting section.  
\* Added How to Unroot. Stock mode.
