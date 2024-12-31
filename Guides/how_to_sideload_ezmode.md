# How to Sideload by using drag n drop method safely

# Table of contents
- [Introduction](#introduction)
- [Instructions](#instructions)
    - [Pre-settings](#pre-settings)
    - [Pre-Downloads Files](#pre-downloads-files)
    - [Steps to sideload](#steps-to-sideload)
        - [Windows](#windows)
        - [Linux](#linux)
        - [MacOS](#macos)
- [Troubleshooting](#troubleshooting)

---

## Introduction
[**`^ back to top`**](#table-of-contents) <br>

Using [**scrcpy (screen copy)**](https://github.com/Genymobile/scrcpy) you can easily install **APK** files by dragging and dropping them onto the scrcpy window. Ensure the main screen is in the Settings, Note, or any other window except the App window to avoid crashes. It appears that only one APK can be installed at a time so if you need to install multiple APKs, reconnect the USB cable and repeat the steps for each **APK**. The motivation for this guide is to protect users from downloading random malicious programs. This guide will walk you through each step ensuring you know exactly what you are doing. <br>

Other benefits of using scrcpy include the ability to copy and paste clipboard content, manage files, view colours, use your desktop keyboard and mouse, larger screen and much more. It's a versatile tool that enhances your device management experience.

For general knowledge and safety measures, please refer to [this guide](https://github.com/dwongdev/sugoi-supernote/blob/main/Guides/how%20to%20sideload%20supernote.md). <br>

**Tested:**
* Supernote A6X2 Nomad. Chauvet3.20.29
* Windows 10
* Working as of 31.12.24

**Not Tested:**
* MacOS/Linux/ChromeOS
* Other Supernote model(s)

## Instructions
[**`^ back to top`**](#table-of-contents) <br>  

### Pre-settings
**Process (Easy as 1-2-3):** <br>
*Step 1:*
[SN] To activate and access it on your SN device. Go to Settings -> Security & Privacy -> Sideloading -> On

*Step 2:*
[SN] A disclaimer message will pop up on the screen. Read the terms and conditions carefully. 
If you agree to it then select Accept and Enable. Otherwise, hit the back button, top left corner.

*Step 3:*
Congrats. You can begin sideloading apps.

### **Pre-Downloads Files**
[**`^ back to top`**](#table-of-contents) <br>
**Windows** <br>
***Step P1:*** <br>
Download scrcpy from this [link](https://github.com/Genymobile/scrcpy). Ensure you verify the website's legitimacy before proceeding.

***Step P2:*** <br>
Click on scrcpy V3.1 (or whatever latest revision at the time) or Releases on the right hand side. <br>
(***Note***: Should click Releases to see the latest revision) <br>
![image](https://github.com/user-attachments/assets/526785a7-2821-4c66-98b6-7db80bdadaae)

***Step P3:*** <br>
Scroll down section Assets and download to your respective OS. <br>
**Windows:** <br>

Download either the Win64 or Win32 version of scrcpy depending on your Windows system. Most systems nowadays are 64-bit so if your PC is 64-bit, download the scrcpy-win64-v3.1.zip. If you accidentally download the 64-bit version on a 32-bit system it won't be compatible and won't run so just download the 32-bit version instead. <br>

![image](https://github.com/user-attachments/assets/9a037bf6-8fdf-4a65-be4f-a46f580a1ee6)<br>

***Tip:*** To check your system type on Windows 10 (or 11) search for "My PC" in the start menu, right-click on it, and select "Properties." Under "Settings: About," you should see "System Type," which will indicate whether you have a 64-bit operating system and an x64-based processor. <br>

![image](https://github.com/user-attachments/assets/9287578d-c739-45d7-9b13-f56f8dcee525)<br>

### Steps to sideload
#### Windows
[**`^ back to top`**](#table-of-contents) <br>

**Step 1:** <br>
Download the Pre-Download file as above. <br>
**Step 2:** <br>
Extract the zip file to any location on your PC, whether it's the Desktop or another drive, it doesn't matter.
![image](https://github.com/user-attachments/assets/8d8a9f7b-8e21-43a9-8a40-6077ec9337ce) <br>
**Step 3:** <br>
In the folder, click on the `open_a_terminal.bat file`. This will open a black Terminal command prompt. <br>
![image](https://github.com/user-attachments/assets/b3051cc8-1f69-48a6-9a43-0d7c712fc17c) <br>
![image](https://github.com/user-attachments/assets/cb0f6d15-dbed-4375-ad19-5c15c22166be) <br>

**Tip:** For your own safety avoid clicking random .bat files. Instead, inspect them by right-clicking the file and selecting "Edit." This will open the file in Notepad allowing you to see the code and understand what it does. If done correctly you should see `@cmd` which loads the command prompt.

**Step 3A [OPTIONAL]:** <br>
If you don't want to always type the command you can modify the batch file. Remove the first line from `@cmd` to scrcpy as shown below. This way every time you click that batch file it will load up scrcpy instead of the terminal. Click "Save" and close Notepad. Ensure the file is still saved with a .bat extension, not .bat.txt or it won't run. By default, Windows hides file extensions so to enable them go to the same folder, click the "View" tab at the top and tick "File name extensions". You will then be able to see the file extensions.

![image](https://github.com/user-attachments/assets/7eee9418-070a-45ce-aadb-caa5be5ef74c) <br>

**Step 4:** <br>
Double-click the `open_a_terminal_here.bat` file to load the terminal. Then type `scrcpy` and hit Enter. This will launch the terminal/command prompt application. <br>
![image](https://github.com/user-attachments/assets/e869b979-d380-46ec-82e2-58d16a137c56) <br>

![1-Terminal and Command](https://github.com/user-attachments/assets/fed2d789-873f-4c3e-9a7c-607912720559) <br>

***Note:*** 
It will spit out some errors so don't worry about it. Just ignore it.<br>
Also, if you followed the **OPTIONAL** step, the scrcpy program will load automatically so you won't need to type the command. You're already 10 steps ahead! <br>

**Step 5:** <br>
Drag and drop the APK file into the scrcpy window. You will see the terminal performing the installation process as shown below. <br>

![2-DragnInstallAPK](https://github.com/user-attachments/assets/720f66d7-0831-4016-9423-76c1d9be4927) <br>

***Note:*** Refer to troubleshooting if you get into any issues.

**Step 6:** <br>
To exit the application simply close the terminal window and the scrcpy program will close as well. <br>

**Step 7:** <br>
Congrats. APK installed.

**Final results - Screenshot as below** <br>
1) Open terminal and load scrcpy.
2) Drag APK into SN.
3) Wait for APK installation.

![image](https://github.com/user-attachments/assets/d4a5d069-f706-4cbf-8705-4caa2bd7dbc0)



---

#### Linux
[**`^ back to top`**](#table-of-contents) <br>
In terminal window, type: <br>
`apt install scrcpy` <br>

Follow the prompts similar to Windows as above.<br>

#### MacOS
In terminal window, type: <br>
`brew install scrcpy` <br>

Follow the prompts similar to Windows as above.<br>

Note: Have not tested Linux and MacOS commands, however these are the commands on how to install scrcpy. <br>

---

## Troubleshooting
[**`^ back to top`**](#table-of-contents) <br>
T1) If you encounter an error indicating that the device is offline when you type `adb devices`, simply reconnect the USB cable by unplugging and replugging it. Then, load up the batch file again and drag the APK file into the SN Settings view once more. This should resolve the issue.












