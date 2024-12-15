# How to Sideload on SN devices

# Table of contents
- [Introduction](#introduction)
    - [Other formats of APKs](#other-formats-of-apks)
- [Disclaimer](#disclaimer)
- [Compatible Apps](#compatible-apps)
- [Incompatible Apps](#incompatible-apps)
- [Pros vs Cons](#pros-vs-cons)
- [Protection](#protection)       
  - [Basic Cyber Security Etiquette - Anti Virus Scan](#basic-cyber-security-etiquette---anti-virus-scan)
  - [Web Browser Extensions in action](#web-browser-extensions-in-action)
  - [Trustworthy APK sites](#trustworthy-apk-sites)
- [Discussion](#discussion)
    
- [How to enable Sideloading](#How-to-enable-sideloading)
    - [Quick Method](#quick-method)
    - [New Method](#new-method)
    - [Old Method](#old-method)
        - [Prerequisite](#prerequisite)
        - [Pre-Downloads Files](#pre-downloads-files)        
    - [How to sideload](#how-to-sideload)
      - [Video Tutorial](#video-tutorial)
  - [How to uninstall / delete sideloaded app](#how-to-uninstall--delete-sideloaded-app)
 - [Troubleshooting](#troubleshooting)
 - [Changelog](#changelog)
 - [References](#references)

---

## Introduction
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
This tutorial is primarily focused on the Windows operating system and the Supernote A6X2 device.

What is *Sideloading* and *Rooting*? <br>
**Sideloading** is installing apps from sources other than the official app store (such as Google Play) on your device is known as sideloading. The APK file for the program can be downloaded, and it can then be manually installed. It gives you access to apps that are either not featured on the official store or might not be available in your area. It can be useful, but it also comes with risks, like getting a virus, because the apps or files aren’t checked by the official app store. So proceed with caution and download from reputable APK websites. <br>

**Rooting** is the process of obtaining root access, or privileged control, over the Android operating system. This enables you to run specialised apps that need root permissions, change system files, and remove pre-installed software. Although rooting your device can offer additional customisation choices, there are hazards involved, including the possibility of bricking your device and voiding your warranty.<br>

So, are **Sideloading** and **Rooting** mean the same thing? No, they are not the same! Both are two different processes on Android devices. People often mistakenly believe that they are the same, but they are not. 
**Rooting** and **Sideloading** provide you different levels of control over your device. Installing programs from unapproved sources is known as **sideloading**, while getting more system access is known as **rooting**. <br>

An **APK** (Android Package Kit) is the file format used for installing applications on Android devices. An APK file contains all the necessary components for an app to be installed and run on an Android device. 
To gain super access (rooting), refer to [Guides/How to root SN A6X2](https://github.com/dwongdev/sugoi-supernote/blob/c1913881565f8dd4a51588e1386fdd8611c87ffb/Guides/How%20to%20root%20SN%20A6X2.md) <br>


### **Other formats of APKs**
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
While Android can't handle APKM files on its own, the APKM format is not closed-source, neither is XAPK made by APKPure. XAPK files are used by the Google Play Store for example, Aurora Store also pulls XAPKs off of Google's web servers. Both formats require an additional app to install, like AppManager [available on F-Droid](https://f-droid.org/en/packages/io.github.muntashirakon.AppManager/).
It's recommended to prioritise standard .APK files, as they are widely supported and most commonly used. The APKM and XAPK formats can be used if APK is not available but may encounter compatibility issues with Supernote devices.

**Note:** The APKs mentioned here are mostly sourced from the official Google Play Store but are also replicated on APK Mirror and other APK sites, a platform that hosts legitimate APK files while adhering to a strict no-piracy policy. Although these sites ensures the authenticity of its hosted apps, users should be cautious as downloading from third-party sources can pose security risks and may not provide automatic updates. Always prioritise downloading apps from trusted sources to support developers and maintain device security.

## ⚠Disclaimer
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
You'll see a disclaimer on your Supernote your device before you may activate third-party apps. That being said, this disclaimer offers no particular advice on how to keep your device safe. In the end, you are in charge of safeguarding and backing up your Supernote.
![image](https://github.com/user-attachments/assets/4de87daf-4cf3-40df-8497-e5df2cb1f8d2)


I'll go over various safety measures for sideloading programs (APKs) to reduce the possibility of dangerous software, but it's crucial to remember that no technique is 100% secure. Although they use virus-checking techniques, app shops such as F-Droid, Aurora, and even the Google Play Store are unable to provide 100% protection. The installation of third-party software carries an inherent risk.

**Notice:** You run the chance of possibly bricking your device. You assume full responsibility for your actions and proceed at your own risk. I cannot be responsible for any problems that could happen. It is also your duty to carry out your own due diligence research.

It is essential to always back up your data before taking any further action!!

## Compatible Apps<br>
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
On GitHub, tables are sometimes shown in an odd way. To find out which apps can be sideloaded, click the link below.<br>
<img width="1634" alt="image" src="https://github.com/user-attachments/assets/7d050726-15a4-4373-9ae3-a700f4048e88">
The majority of this data comes from the Supernote subreddit. Since I haven't tested most of these apps myself, please proceed with caution.<br>
**Link:** https://airtable.com/appzL9hpWOVEA9yer/shrs2RfIpx9yCVKHJ <br>
***Updated as of:*** 26/08/2024

***Footnotes (For Sideloads above):*** <br>
[1] [Root device required](https://www.reddit.com/r/Supernote/comments/1bd5kor/comment/l26xu5o/) <br>
[2] [Onenote on A6X2](https://www.reddit.com/r/Supernote/comments/1cdfjxz/onenote_is_sideloadable_on_a6x2_and_good_for/)

An awesome community member [@VladimirKostek on YT](https://www.youtube.com/@VladimirKostek) has offered to test sideload apps. You can view his video [here](https://www.youtube.com/watch?v=UU_2ob0ttiY).

## Incompatible Apps<br>
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
These are a few apps that people in the community have tried sideloading before.

|         App Name       	|                Comments               
|:----------------------------	|:-----------------------------------------------------------------------------------------------------------------
| Audible	| Doesn’t launch
| DroidVim	| Too powerful for SN to handle.
| Feedly	| Not working
| Flipaclip	| Laggy af.
| Google Play Store	| SN does not have Google Mobile Services (GMS). All Google related apps will not work.
| Krita	| Not working
| Logseq	| Doesn’t launch
| Moonreader | AX5 Not Compatible
| Pen up	| Laggy. Doesn’t run well. Bad Latency.
| Sketchbook	| Long delay. Unsketchable.
| The Economist	| Not working
| TickTick	| Not working
| Todoist	| Half working?


## Pros vs Cons<br>
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
A pros vs con of sideloading table.

| Pros                                                                        | Cons                                                                 |
| ----------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| App access that isn't offered in official stores.                           | Increased security risks and vulnerability to malware                |
| Greater customization and modding capabilities                              | Possible instability or incompatibility of the device                |
| Bypass geographical restrictions on app availability                        | Automatic updates for sideloaded programs are absent                 |
| Freedom from constraints and policies in the app store                      | Risks to privacy from maybe excessive app permissions                |
| Decrease in bloatware                                                       | Loss of user reviews and centralised updates in the app store        |
| Access to alternative app stores                                            | Greater accountability on the part of users to maintain app security |
| More authority over privacy settings                                        | Possibility of device warranty being voided                          |
| Capacity to create and test applications                                    | Danger of downloading rogue programs that pose as trustworthy        |
| Early access to application beta versions                                   |                                                                      |
| Installing defunct applications that work on older OS versions              |                                                                      |
| Possibility of increased app performance (lack of licensing checks and DRM) |                                                                      |

## Protection
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
Neither Aurora Store nor F-Droid scan installed (or to be installed) apps for malware, but both are legitimate sources to download apps from.

Aurora Store, as a front-end for Google's Play Store (Aurora Store is not a separate store; It pulls its apps from Google's servers), does not check anything for malware at all; Google checks its store and removes malware there. No store checks for malware on the users device because that would use too many resources.

F-Droid is its own store which limits the apps it offers to the ones that are free and open-source. It sometimes lags behind on app updates (compared to the versions published by the developers.) This is because every time a new app or update gets submitted to the F-Droid store, the people behind F-Droid check the app and let a program run through the app's source code to check for malware, usage of any communication with servers that the user gets no control of, dependancy on external websites and similar (sometimes problematic) choices by the devs. 

It is your responsibility to make sure the APKs are secure before installing them on your device if you're utilising third-party websites like APK Mirror. Regardless of the source, you should always exercise caution and confirm the security of any software you download.

**Caution*** CAUTION FAKE!<br>
There is no official website for MagisK. Only the Github version is legit https://github.com/topjohnwu/Magisk.<br>
If you searched Magisk on google and found this on another website. It is a virus and malware. Please be very careful on where you download APK's etc and check the url address. See proof below.<br><p>
   
**Google searches:** <br>
<img width="465" alt="image" src="https://github.com/user-attachments/assets/01f107b2-9dc5-4006-a6bc-35d8de6d1472"><br>
I downloaded the fake MagisK for fun and uploaded it to [VT](https://www.virustotal.com). <br>
<img width="1368" alt="image" src="https://github.com/user-attachments/assets/4cbcc288-a78c-4ef0-9e25-5ea4734ecf8b"><br>
DO NOT INSTALL/SIDELOAD THIS ON YOUR DEVICE. IT CAN GET ACCESS TO YOUR BANK ACCOUNTS ETC.

### Basic Cyber Security Etiquette - Anti Virus Scan
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
Ensure your APK's are safe by scanning them with these reputable antivirus websites. It's better to be safe than sorry!
* [VirusTotal (VT) ](https://www.virustotal.com/gui/home/upload) - Free online service that analyses files and URLs for viruses, worms, trojans, and other kinds of malicious content. It uses over 70 antivirus scanners and URL/domain blocklisting services to check for threats1. Users can upload files or enter URLs to get a detailed report on potential security issues
* [Hybrid Analysis](https://hybrid-analysis.com/) - Free malware analysis service powered by Falcon Sandbox. It combines runtime data with memory dump analysis to detect and analyse unknown threats, even the most evasive ones. Users can upload files or URLs to receive an instant threat analysis, which includes reputation lookups, antivirus engine results, and static analysis.

### Web Browser Extensions in action
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
Install [uBlock Origin](https://github.com/gorhill/uBlock) from the official app store and activate filters. uBlock Origin is a free and open-source browser extension for content filtering, including ad blocking, malware etc.<br>
<p></p>
Example of fake dodgy MagisK apk <br>
<img width="532" alt="image" src="https://github.com/user-attachments/assets/1cccbf0a-e728-42b4-ad24-965f436f043b"><br>

[AdGuard](https://github.com/AdguardTeam/AdguardBrowserExtension) doing it's job too <br>
<img width="387" alt="image" src="https://github.com/user-attachments/assets/f49b41d2-94d0-425c-96bc-e7eeb3e1b37f">

[Nighthawk by PhishFort](https://nighthawk.phishfort.com/) is a valuable tool for enhancing safety while using Google Search. Nighthawk is a free, open source, browser extension that verifies if you are visiting official sites and alerts you when you may be in danger. See below in action.
![image](https://github.com/user-attachments/assets/8a603a1f-ab70-4598-b013-06be33f5819a)

### Trustworthy APK sites
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
* [F-Droid](https://f-droid.org/en/) - Specialises in open-source apps and has a strong emphasis on privacy and security. AKA Aurora Store.
* [APK Mirror](https://www.apkmirror.com/) - Known for its rigorous verification process, ensuring all APKs are safe and legitimate.
* [APKPure](https://apkpure.com/) - Another popular site with strict security practices to verify the legitimacy of apps.
* [Uptodown](https://en.uptodown.com/) - Offers a wide range of apps and has a strong reputation for safety.
* [Aptoide](https://en.aptoide.com/) - A community-driven platform where users can create their own app stores, with a focus on security.

## Discussion
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
**Link:** https://www.reddit.com/r/Supernote/comments/1b4y578/what_is_everyone_sideloading <br>

---

## [How to enable Sideloading]
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
I've created a thorough, step-by-step tutorial for people with no prior technical or IT knowledge. You should have no trouble sideloading apps if you follow it. You are guaranteed to comprehend and be aware of each step required by using this manual technique.
Since it uses the same method, this procedure should work with other Supernote devices as well, albeit it might differ based on the firmware and model number of the device.

### [Quick Method]
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
To make this process easier, a kind community member has created an automated script. 
This is how it operates:
* Download APK files from third-party APK websites.
* The downloaded APK files should be placed in the appropriate APK folder within the script folder.
* Run the script in the background.
* In a matter of seconds, the script will install the programs automatically.
By automating the installation procedure, this method saves a great deal of time and lowers the possibility of mistakes made during human installation.

For comprehensive information, visit [Sideloading Apps on the Supernote A5X (and probably A6X)](https://github.com/TA1312/supernote-a5x/blob/master/sideload.md). <br>
Note: Please be advised that this script may take some technical know-how to implement. It may require minor adjustments to make sure it works with the newest Supernote devices. Users need to be ready to debug and tweak the script as necessary to get it to function correctly on their particular device model and firmware version.

## New Method
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
SN A6X2 (Nomad)

| OS              | Released Date     | Remarks                  |
| --------------- | ----------------- | ------------------------ |
| Chauvet 3.18.29 | August 14th, 2024 | Re-enabled Sideloading   |
| Chauvet 3.17.29 | June 6th, 2024    | Removed Sideloading      |
| Chauvet 3.16.27 | March 1st, 2024   | Added Sideloading switch |

Ratta has made the procedure easier by immediately adding sideloading options to the SN device's settings. Feel free to utilise any method that works for you while sideloading; there are other approaches that aren't covered here.

**Process (Easy as 1-2-3):** <br>
*Step 1:*
[SN] To activate and access it on your SN device. Go to Settings -> Security & Privacy -> Sideloading -> On

*Step 2:*
[SN] A disclaimer message will pop up on the screen. Read the terms and conditions carefully. 
If you agree to it then select Accept and Enable. Otherwise, hit the back button, top left corner.

*Step 3:*
Congrats. You can begin sideloading apps.

---

## Old Method
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
**Tested on Windows**:
* Supernote A6 X2 Nomad - Ver: 3.16.27
* **OS**: Windows 10/11
* Desktop PC

### **Prerequisite**
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
* Supernote device
* USB cable

### **Pre-Downloads Files**
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
***Step P1:***

* Android Platform toolsDownload Android Platform Tools from website below and select:
  **Download SDK Platform-Tools for Windows**
  [SDK Platform Tools release notes  |  Android Studio  |  Android Developers](https://developer.android.com/tools/releases/platform-tools)

***Step P2:***

* F-Droid (Similar to Google Play Store to download Apps etc etcs)
  [F-Droid - Free and Open Source Android App Repository](https://f-droid.org/en/)

### **Steps to sideload**:
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
Note: Although the tools and app versions could be out of date, the instructions should still be valid.
Additionally, you must use `.\adb devices` on Windows for the command `.\adb devices` because the Android tools are not added to the system's environment path. The "." prefix ensures that the command will run from the current directory.

**Step 1:** Download the Pre-Download files as above. <br>
**Step 2:** On Supernote device. Need to enable this option:Supernote Settings->Security & Privacy->Sideloading: On (Tick the button). <br>
**Step 3:** Plug USB cable on your desktop **USB port 2** on your desktop PC or laptop.(Note: USB Port 3 did not work for me as it didn't recognise, you can try)Make sure Windows recognise SuperNote device and it will say MTP connected etc. **(Warning: Make sure your PC recognise the device or else you won't be able to proceed next steps and onwards!!)** <br>
**Step 4:** **Step P1** Android Platform tools files should be downloaded already.Extract the zip file. The folder will be called "***platform-tools_r35.0.0-windows***"(File revision and name may change in future) <br>
**Step 5:** Double click the folder and open folder called "platform-tools". <br>
**Step 6:** Right click in the open space within this folder "platform-tools", hold "SHIFT" key and right-click, you should see pop up and select "Open PowerShell window here". <br>
**Step 7:** **Windows PowerShell**. A black or blue screen will pop up with lines (Looks like a bunch of lines, like you are in the matrix). (**Tip:**  You can copy the command  `.\adb devices` and right-click in Powershell prompt window and it should paste it in) <br>
    Type: " `.\adb devices` "(Type exactly the command above without the inverted commas ". E.g: `.\adb devices`) <br>
**Step 8:** If done correctly, you should see Supernote device, something like (will take couple of seconds): <br>
    *daemon not running; starting now at tcp:5037 <br>
    daemon started successfully <br>
    List of devices attached <br>
    SNXXXXXXXXX device* <br>
**Step 9:** **Step P2** F-Droid .APK file should be downloaded already.Copy "F-Droid.apk" file and paste into the folder "platform-tools" as per Step 4. <br>
**Step 10:** Go back to Window Powershell as you done in Step 7.Type: `.\adb install F-Droid.apk` (Can do right-click copy/paste trick) <br>
**Step 11:** If all goes well, you should see the following messages below in Powershell: <br>
     *Performing Streamed Install <br>
     Success* <br>
**Step 12:** You may close **PowerShell** from here. Type exit or hit the X button (top right corner) to close. <br>
**Step 13:** To open F-Droid app. Go to your Supernote device.Swipe gesture down from the top or the side to access Settings (The Gear icon)Supernote Settings->Apps->Supernote App Store->F-Droid(Same thing to access any app/apk you install).Once loaded, hit update and be patient!! It will take a while like a good minute or something. I thought it was frozen but feels like forever.Give it a minute or so. Go make coffee and come back.(Note: Download a browser from the F-Droid app store and search for .APK, when 1st time downloading it and installing it, it will prompt you to install unknown apps from the browser, swipe right for yes. Follow the prompts, self explanatory) <br>
**Step 14:** Enjoy! Have Fun. <br>
 <br>
## **[How to sideload]**
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
**Step 1:** Enable sideloading. <br>
**Step 2:** Download the APK from an app store or third-party site.<br>
**Step 3A:** If downloaded from an app store, click "Install." OR<br>
**Step 3B:** If from a third-party site, download and then install.<br>
**Step 4:** Done!<br>
**Tip:** Best to install a decent file manager and app store.

### **Video Tutorial**
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
- [How to Sideload Apps on your Super Note A6X2](https://www.youtube.com/watch?v=pKOJCIAzA04)
- [Supernote A6X2: How to Side Load Apps](https://www.youtube.com/watch?v=QYLRL3VaeLY)
- [Testing Android Apps on A Supernote Nomad](https://www.youtube.com/watch?v=UU_2ob0ttiY)

## How to uninstall / delete sideloaded app
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
Follow steps below on how to remove the sideloaded app. <br>

Using ***A6X2 Nomad*** device as an example.<br>
**Step 1:** On your Supernote, go to **Settings** menu<br>
**Step 2:** On the left side of the menu, go to **Apps**<br>
**Step 3:** Once loaded, on the right. Select **My Apps**<br>
**Step 4:** A list of apps will be loaded. To uninstall, select the app you wish to uninstall then select **>** icon <br>
**Step 5:** Select **Uninstall** button<br>
**Step 6:** A message prompt will say "Do you want to uninstall this app?" Select **OK** button to confirm<br>
**Step 7:** The App should be successfully uninstalled<br>

**Uninstall app via ADB terminal** <br>
***⚠Use caution when utilising the ADB terminal to remove apps. Only continue forward if you comprehend the procedure completely. Uninstalling an incorrect software or changing system preferences may seriously harm your device.  If you are unsure or lack the necessary knowledge, it's best to avoid this method to prevent any unintended consequences.*** <br>

Before proceeding, ensure that sideloading is enabled on the SN device and familiarise yourself with the fundamentals of both ADB and the terminal shell. <br>
**Step 1:** [Terminal] `adb devices` <br>
Make sure you can see your SN device connected. <br>
**Step 2:** [Terminal] `adb shell pm list packages` <br>
**Step 3:** A list of packages will be displayed. Select the one you want to uninstall. <br>
**Step 4:** For example, Eink Bro. You will see `package:info.plateaukao.einkbro` <br>
Type in the terminal without the package text infront as shown below. <br>
[Terminal] `adb uninstall info.plateaukao.einkbro` <br>
**Step 5:** The app will be successfully uninstalled. <br>


## ***Troubleshooting:***
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
**T1)** If SN device is not recognised in Device Manager and errors popping up. adb device command doesnt work.

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

---

## Changelog
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
**27/08/2024:** <br>
- Protection - Added browser extensions for phishing. <br>
- Disclaimer <br>
- How to delete sideload app <br>
- Formatting

**26/08/2024:** [Community Peer Reviewer](https://www.reddit.com/user/ImJustHereToBullyYou/)<br>
Various sections updated:
- Other formats APK
- Protection
- Old Method
- References  

## **References**
[**`^ back to top`**](#how-to-sideload-on-sn-devices) <br>
* Discussion post: https://www.reddit.com/r/Supernote/comments/1f0we2u/how_to_sideload_on_sn_devices_guide/
* [https://www.reddit.com/r/Supernote/comments/1bfz4o0/how_to_sideloading_on_a6_x2_guide](https://www.reddit.com/r/Supernote/comments/1bfz4o0/how_to_sideloading_on_a6_x2_guide) - DEPRECATED
* [https://www.reddit.com/r/Supernote/comments/198dcey/sideloading_apps_on_a6_x2/](https://www.reddit.com/r/Supernote/comments/198dcey/sideloading_apps_on_a6_x2/)
* SN knowledge site at https://github.com/dwongdev/sugoi-supernote/ is my new location.

Be alert and stay safe as always.
