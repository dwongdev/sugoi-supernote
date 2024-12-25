# How to sync between multiple devices via Synology NAS - Bidirectional Sync

# Table of contents
- [Introduction](#introduction)
- [Prerequisite](#prerequisite)
  - [Tested](#tested)
  - [Not Tested](#not-tested)
- [Device Functionalities](#device-functionalities)
  - [Working](#working-)
  - [Not Working](#not-working-)
- [Bug](#bug)
- [Synology Compatible Models](#synology-compatible-models)
  - [Docker (DSM 6.2 ≤ 7.1)](#docker-dsm-62--71)
  - [Container Manager (Docker) DSM 7.2+](#container-manager-docker-dsm-72)
- [Instructions](#instructions)
  - [Pre-setup](#pre-setup)
    - [SN Device](#sn-device)
    - [Synology](#synology)
  - [Configurations](#configurations)
    - [SN Device](#sn-device-config)
    - [Synology NAS Docker - Syncthing](#synology-nas-docker---syncthing)
    - [SN Syncthing](#sn-syncthing)
    - [Syncing in action](#syncing-in-action)
  - [Optional - NetGuard](#optional---netguard)
  - [Tips](#tips)
  - [Troubleshooting](#troubleshooting)
  - [References](#references)

## Introduction
Using your own Synology NAS private server to sync your Supernote device ensures enhanced privacy, security, and control over your data. It offers customisation, cost efficiency, and reliability, free from the constraints of third-party services like OneDrive, Dropbox or Google. This setup provides a seamless and secure syncing experience tailored to your needs. Additionally, by avoiding big corporations and servers based in countries like China, the US, Russia or any other countries, you maintain complete control over your data, ensuring it remains private and within your jurisdiction. There is no malice against the company or countries mentioned; this is simply a preference for maintaining data privacy and control.

You have the choice to use a closed connection network or your personal Wi-Fi connection. This setup is designed exclusively for backup and syncing to your personal cloud, so some functions dependent on Ratta services won't be available. This is a trade-off to consider and some features or functions may break. You'll be fully responsible for keeping your device updated, troubleshooting and you can install the latest firmware via USB instead of OTA. I will be using Syncthing and NetGuard to achieve this setup.

A sketch by me which demonstrates this how syncing magic process 😅  <br>

![20241216_SyncGuide_Page_1](https://github.com/user-attachments/assets/a585a9ab-1091-4289-a427-785ecbe5dc3a)
![20241216_SyncGuide_Page_2](https://github.com/user-attachments/assets/9751679e-a461-42c2-9b28-5e0454c31d74)

**Motivation:** 💁‍♂️
| Feature/Aspect 	| Private Self-Hosted Cloud (e.g., Synology NAS) 	| Ratta/Google Drive/OneDrive/Dropbox* 	|
|:---:	|:---:	|:---:	|
| Privacy 	| High - Data remains within your control 	| Moderate - Data stored on third-party servers 	|
| Security 	| High - Customisable security measures 	| High - Strong security measures in place 	|
| Cost 	| Initial setup cost, no recurring fees 	| Freemium/Subscription-based, recurring fees 	|
| Customisation 	| High - Full control over setup and features 	| Limited - Fixed features and settings 	|
| Data Ownership 	| Full ownership 	| Shared with service provider 	|
| Accessibility 	| Requires setup and maintenance 	| Easy access from anywhere with internet 	|
| Reliability 	| Depends on your hardware and setup 	| High - Managed by service provider 	|
| Backup and Sync 	| Customisable backup and sync options 	| Built-in backup and sync features 	|
| Support 	| Community and self-support 	| Professional support available 	|
| Jurisdiction 	| Data remains within your jurisdiction 	| Data may be stored in different countries 	|
| Open Source 	| High - Many self-hosted solutions are open source 	| Low - Proprietary software 	|
| Transparency 	| High - Full visibility into code and operations 	| Low - Limited visibility into backend processes 

* Info may be inaccurate. 

**Syncthing:** Syncthing is a free, open-source tool that syncs files between devices in real-time without relying on a central server. It ensures your data remains private and secure, stored only on your devices.

**NetGuard:** NetGuard is an open-source firewall app for Android that blocks internet access for specific apps without root access. It helps reduce data usage, save battery life, and enhance privacy.

## Prerequisite
[**`^ back to top`**](#table-of-contents) <br>
- IT Skillset: Advanced <br>
- Tablet: Supernote device <br>
- Duration: 3 to 6 hours (Depends on your IT skill level)(Best to do this early morning as it can take several hours to troubleshoot etc) <br>
- File Server: Synology NAS device <br>
Make sure your Synology can support Docker (or Container Manager. Synology renamed this….) <br>
If **DSM 6.2 ≤ 7.1** then it will be called Docker. <br>
If **DSM 7.2+ then it** will be called Container Manager. <br>
- Desktop PC/Laptop.<br>
- ⚠ A back button app sideloaded on the SN <br>
- A curious mind with some smarts 🧠😝 <br>

### Tested (Working as of 18 Dec 2024)
- Synology RS1219+ with Docker, DSM 7.1.1; <br>
- A6X2 Nomad Chauvet 3.20.29; <br>
- Syncthing-fork v1.28 (Catfriend1); [Syncthing-Fork (Can install via Aurora store as well which I did)](https://github.com/Catfriend1/syncthing-android) <br>
- Netguard v2.330 (M.Bokhorst); [Releases · M66B/NetGuard](https://github.com/M66B/NetGuard/releases) <br>
[NetGuard - Website](https://netguard.me/) <br>
- Windows OS - Windows 10. <br>

### Not Tested:
- MacOS/Linux/ChromeOS
- Other Supernote model(s)

## Device Functionalities
[**`^ back to top`**](#table-of-contents) <br>
### Working ✔🙂
- File explorer app;
- Note: Real-Time Recognition works offline;
- View PDF is fine;
- Kindle and Digest working fine; and
- Etc.

### Not Working ❌😪
- Browse & Access (Alternative solution. Use FTP via Cx File Explorer app);
- Screen mirroring (Alternative solution. Use scrcpy);
When NetGuard is active, the following function stops working. For some reason, the two functions above does not work as it shows different IP address to my home network. I am using 192.168.X.X and the SN shows as 10.1.X.X even though it is connected to the same WiFi network. I blocked most connections from SN and it may have cut the cord somewhere.
- Supernote App Store via Settings→Apps wont load when blocked;
- Share screenshot via Share via QR Code; and
- Whatever apps that's linked with Ratta.

## Bug
- Supernote Linking is always ON via My Device (Already submitted a ticket).

## Synology Compatible Models
[**`^ back to top`**](#table-of-contents) <br>
### Docker (DSM 6.2 ≤ 7.1)
![image](https://github.com/user-attachments/assets/27c735cd-dae7-46e4-b0dc-3934b25dca6e)
An extract from Synology website (link below) - For latest info, please visit the Synology website. <br>
Link [Packages | Synology Inc.](https://www.synology.com/en-global/dsm/packages/Docker?os_ver=6.2&search=docker)

### Container Manager (Docker) DSM 7.2+
![image](https://github.com/user-attachments/assets/ddfd7d6e-0b75-4e80-8217-cfb4cf716872)
An extract from Synology website (link below) - For latest info, please visit the Synology website.<br>
Link [Container Manager - Add-on Packages | Synology Inc.](https://www.synology.com/en-global/dsm/packages/ContainerManager?os_ver=7.2&search=docker)

Other useful links: [Can I Run Docker on My Synology NAS? – Marius Hosting](https://mariushosting.com/can-i-run-docker-on-my-synology-nas/)

Install **Portainer** (Docker management). Full guide linked below. <br>
[Synology: 30 Second Portainer Install Using Task Scheduler & Docker – Marius Hosting](https://mariushosting.com/synology-30-second-portainer-install-using-task-scheduler-docker/) <br>
The guide has included as first step to install **Docker**. <br>

**[Changelog]** <br>
- Nil. <br>

**Disclaimer:** 🛑🙋‍♂️ WARNING: There's a **risk** of bricking your device. Blocking certain services might cause them to **malfunction**. There are many ***unknowns***. Proceed at your **own risk** and **accept** full responsibility. Also, Ratta (the ***company**) won't be able to give you tech support if you choose this route. Obviously, the risk is low nevertheless but yeah! Let's goooo 😁 ***I cannot be held liable for any issues that may occur***. And Good Luck!<br>

---

# Instructions
[**`^ back to top`**](#table-of-contents) <br>
## Pre-setup

### SN Device
1) Sideload Syncthing-fork
(**Syncthing** android app development is no longer maintained however other platforms are still working so a kind soul have volunteered to forked it and maintain it for Android.)

- ***[OPTIONAL]*** <br>
Sideload **Netguard**

2) We will configure the app settings later down the track in this guide.

### Synology
[**`^ back to top`**](#table-of-contents) <br>
3) Follow this guide to install Syncthing via Portainer. <br>
[Synology Install Syncthing with Portainer – Marius Hosting](https://mariushosting.com/synology-install-syncthing-with-portainer/)

**Note:** In **Step 4**, you can just create config folder and same folders as per SN device. Don't need to create data1/data2. <br>
I created a folder called A6X2Nomad (You can create any folder name to your liking e.g. Carrot) then later create subfolders (the main ones as per SN device).

![image](https://github.com/user-attachments/assets/6c52241a-9f3d-463e-a007-3b69968af324)

Create the main folders which is shown in the SN device:
* DOCUMENT
* EXPORT
* INBOX
* MYSTYLE
* NOTE
* SCREENSHOT

In Step 14 ([MH site](https://mariushosting.com/synology-install-syncthing-with-portainer/)), SKIP THIS STEP. DONT ADD FOLDER YET. GO TO STEP 16 first. WE WILL COME BACK LATER.

4) From Step 16 to 17. This is your **secret** Synology NAS Syncthing ID. **DO NOT SHARE WITH ANYONE!!** <br>
It will be displayed as 8 segment pattern syncthing ID key.

## CONFIGURATIONS
[**`^ back to top`**](#table-of-contents) <br>
### SN Device Config

5) Open Syncthing-Fork on the SN device.
6) Click Add device from top right hand corner.
7) Under ID. Type exactly case sensitive Synology Syncthing ID.
(The Synology syncthing ID you got in Step 4 ([Step 17 website from MH site](https://mariushosting.com/synology-install-syncthing-with-portainer/)), Input exactly and case sensitive) 
8) Click Save (You won't see folders yet).
 
![image](https://github.com/user-attachments/assets/206a6ddd-c54b-426e-86c4-7aa34e360dbc)

9) Click **FOLDERS tab and click ADD FOLDER** - top right hand corner.
10) Type in **AZ and ID** field, the same. <br>
E.g **SCREENSHOT** <br>
Click on **Directory** →  **Supernote Nomad** → Scroll down and find **SCREENSHOT** then click that folder → It will open the folder content. At the bottom, click **USE THIS FOLDER**. <br>
A message prompt will alert you. Click **ALLOW**.

![image](https://github.com/user-attachments/assets/1dae8d39-fd43-4d5e-9ff5-a466d136591d)

![image](https://github.com/user-attachments/assets/61f657f0-a8ae-4a39-baca-76b69f19af8f)

11) Tick **NAS under devices** <br>
12) Click **Watch for changes** <br>
13) File Versioning → Simple → **FINISH** <br>

It should look like this.
 
![image](https://github.com/user-attachments/assets/d35bf55c-bf04-46c7-8685-b5f6721009aa)

14) Click **CREATE** button, upper top right hand corner.
15) Do the rest for all the main folders.
16) Click devices and click NAS (Whatever name you created).
17) Tick all buttons for all folders.

![image](https://github.com/user-attachments/assets/49819907-3d7e-4069-8298-fdc13aa7dd9e)

### SYNOLOGY NAS DOCKER - SYNCTHING
[**`^ back to top`**](#table-of-contents) <br>
18) It will be XXX.XXX.X.XXX:XXXXX (You can find it in your Portainer under Containers. Click one of the Published Ports and it will load up the syncthing page for you).

![image](https://github.com/user-attachments/assets/72ecab87-5bc8-4eae-b8db-d2608499b889)

19) Click **Add Remote Device**.
20) Input SN Device Syncthing Device ID and name it A6X2Nomad (or Carrot). Click Save.
21) You will be getting New Folder pop up. Click **Add**.

![image](https://github.com/user-attachments/assets/c13d1977-32cd-492c-ad22-e371257c67b9)

22) You will need to change **Folder Path**. Make sure it is correct or else it wont able to read. You only can do it once. If inputted incorrectly. Just delete it and start again. Wait until it scans and pop up. Redo the steps. <br>
**Sharing:** Tick A6X2Nomad <br>
**File Versioning:** Simple File Versioning <br>
**Ownership:** Tick Sync Ownership <br>
Tick Ignore Permissions <br>

(Filepath on the Synology NAS would be ~/A6X2Nomad which the full file path is displayed as: YOUR_SYNOLOGY→docker→syncthing→A6X2Nomad)

![image](https://github.com/user-attachments/assets/c109c19e-5a4c-494a-bbcc-94506bfa7e5d)

![image](https://github.com/user-attachments/assets/aa99f014-cea6-4a82-89cb-607f0489bb06)

![image](https://github.com/user-attachments/assets/4778a787-1544-4481-9b3d-c2308f67cc60)

![image](https://github.com/user-attachments/assets/f7a9449c-4266-4707-814e-e80152f04d0a)

![image](https://github.com/user-attachments/assets/97ff05aa-a19d-4e10-a959-47dd47eb6ce3)

23) Click **Save** button once done. Repeat for others.
24) It should somewhat look like this

![image](https://github.com/user-attachments/assets/0de42b9e-2083-48fc-865c-9c04f4f2d1b0)

### SN Syncthing
[**`^ back to top`**](#table-of-contents) <br>
25) Your Syncthing should look like this on the Supernote

![image](https://github.com/user-attachments/assets/2c718553-5f34-40f8-8097-7a30a05f8725)

![image](https://github.com/user-attachments/assets/fc13b413-5230-4576-b74a-f9f2a810214a)

![image](https://github.com/user-attachments/assets/3573f06a-48b9-4d64-8a00-6abe931911c0)

You can run it as FOLLOW RUN CONDITIONS or FORCE START IGNORE RUN CONDITIONS. <br>
Doesn't really matter if you don't tinker run conditions, pretty self explanatory. <br>

These are my **Syncthing** settings (Don't have to follow me, just preference. For reference only.) <br>
**Run Conditions** <br>
**Note:** You can also select whitelist specific WiFi networks. <br>

![image](https://github.com/user-attachments/assets/4def20c3-e102-4548-b1cc-4f44b6c08a2a)

**User Interface**<br> 
![image](https://github.com/user-attachments/assets/a049d6a1-e458-4b62-8956-e40605314389)

**Behaviour**<br>
![image](https://github.com/user-attachments/assets/8ff977bf-f432-4576-ad83-e1c3b579bd71)

**Syncthing Options** <br>
![image](https://github.com/user-attachments/assets/67125408-d7bf-4644-bc98-315cc6088007)

Other sections left untouched.<br>

### Syncing in action<br>
[**`^ back to top`**](#table-of-contents) <br>
***Copy and Moving from SN*** <br>
![Copy and moving from SN](https://github.com/user-attachments/assets/09c69614-c988-4f25-afb6-3068ee337f87)

***Copy from NAS, Deleting file from SN*** <br>
![Copy_from_NAS_Deleting_file_from_SN](https://github.com/user-attachments/assets/8bdbd982-f4d5-47ce-908c-81d72f9d321a)

***Create a folder from NAS**** <br>
![Create_a_folder_from_NAS](https://github.com/user-attachments/assets/b55ffe5f-8179-46a9-9578-f46467990092)

***Create a note in SN and see Synology detects it*** <br>
![Create_a_note](https://github.com/user-attachments/assets/c2967904-0981-4cf4-bb80-5970291dd2d3)

***Delete a file from NAS*** <br>
![Delete_file_from_NAS](https://github.com/user-attachments/assets/1d7b2f97-c877-48f1-88a5-bfbf5eb8577e)

***Rename Filename in SN*** <br>
![Rename_Filename](https://github.com/user-attachments/assets/ffda3bdc-b488-4419-9667-4bea7a85d832)


## [OPTIONAL] - NetGuard
[**`^ back to top`**](#table-of-contents) <br>
**Firewall. This blocks all incoming and outgoing internet connections.** <br>
Assuming you already sideloaded **NetGuard** in **Step 1** <br>
### SN Device - NetGuard
**WARNING:** You need to **sideload a back button** or else you won't be able to go back in the present moment. <br>
You will be stuck in the matrix. You have been warned!! <br>
26) Open **NetGuard**, you will see a message pop up stating terms and condition. Read and if agreed. Click **“I AGREE”**. <br>

![image](https://github.com/user-attachments/assets/e5be5bea-e2e3-48be-b889-d4a8ed57bf71)

27) At main page, read and click all **OK** button (there is 5)(If there is pop ups). <br>

28) At the top, click the **3 dots** (options), top right hand corner and click **Settings**. <br>
 
![image](https://github.com/user-attachments/assets/24eecea9-ff3f-4ece-b687-3d5e0ed2b6f3)

29) Select Defaults (white/blacklist).

![image](https://github.com/user-attachments/assets/26e323af-789b-4322-a509-1db6fd5935ba)

30) Select: <br>
- Block Wi-Fi <br>
- Block mobile <br>

Uncheck Apply ‘when screen on’ rules <br>
Default setting should look like this <br>

![image](https://github.com/user-attachments/assets/9734e86c-7195-4605-bdef-1518fad61e90)

31) Advanced Options
![image](https://github.com/user-attachments/assets/70ee8cb4-4993-4e65-94cf-5d3f6f8356a3)

32A) Options - Left unchanged <br>
[PAID][Optional] If unlocked, tick Notify on new install. <br>

![image](https://github.com/user-attachments/assets/88353610-4724-4f73-81e4-fac976b2f09d)

Network options.- Left unchanged. <br>
Speed Notifications - Left unchaged. <br>

33) Click start, top left corner. You will get a prompt, allow **VPN**. Select OK. <br>
and then Connection Request - OK again. <br>

![image](https://github.com/user-attachments/assets/39adf6a6-c619-49f7-9d7f-2d13f3d09a12)

![image](https://github.com/user-attachments/assets/30bbbde8-09d3-4d0e-91b4-51cfec73c82c)

34) NetGuard Prompt <br>
Tick “Don't ask again” and click **OK**. <br>
![image](https://github.com/user-attachments/assets/499b1216-1fc9-430c-a707-697a599b2a31)

35) Click all apps and find **NetGuard**. Select **Don't optimize** and click Done. Hit **Back** button.
 
![image](https://github.com/user-attachments/assets/16b453c6-362c-470c-b169-e8313ebd4ef3)

36) Find **Syncthing** and check Allow in lockdown mode. Uncheck black when roaming. Select the icons on the right that looks like a Wifi icon and Roaming icon. (Probably wondering if Roaming is required. Probably not but no harm. Inb4 it has a ultra nano mini size simcard inside that the human eyes cannot see.. Can not be too careful…

![image](https://github.com/user-attachments/assets/e3117cfc-f60a-4eac-9ecb-472c6e0f998e)


Other apps that I let them through. Settings for reference as yours may differ. <br>
I selected Lockdown traffic as I want my network airtight. You can choose to select but not required, Optional. <br>
In the above screenshot, you can see me select “Allow in lockdown mode”. I selected both Wifi and Roam enabled. <br>
 
![image](https://github.com/user-attachments/assets/26a14d5f-fb2a-48da-84d6-a4d104a673fe)

37) It would be ideal to have **Show Log** option, you can see the traffic coming in and out. Not required but yeah. <br>
Probably can use another app to see network traffic or Wireshark.



38) **[BONUS]** Pro features unlocked <br>
[**`^ back to top`**](#table-of-contents) <br>
Go to options Pro features and top right hand corner, click Challenge. <br>
Enter the correct Response to unlock. If entered correctly, all the buy button will change to enabled and you will be able to enable locked features such as Show Log function. <br>
(Easy way to unlock is to pay the developer but then again, it may not work because due to no GMS Google lol. Research online on how to do it. That's your homework.) <br>
Hint: MD5. <br>
<br>
You won't be able to use mine as each devices have unique hardware id. <br>
It should look like this after activation. <br>

![image](https://github.com/user-attachments/assets/63e17e45-5c0d-4251-a83d-c7a8167a443e)

39) You will need Show Log option unlocked. <br>
Here are my settings and what it looks like <br>

![image](https://github.com/user-attachments/assets/3930e491-fec7-42b4-85af-11b3b8b64bdd)

**Example:** It appears to be constantly pinging back to Ratta servers. When you click on one of them, it shows you the details. The Wifi icon shows it as blocked. 

![image](https://github.com/user-attachments/assets/7929f219-e376-45e2-b066-d975aa7da823)


## TIPS:
[**`^ back to top`**](#table-of-contents) <br>
***Put your SN device settings on lockdown.*** <br>
- **My Account**→Data Sync→To-Do: OFF<br>
- **Drive**→Supernote Cloud→Auto Sync: OFF<br>
- ***Optional:*** **Drive**→To fully remove it, maybe lock into any of the other 3rd party. E.g. Google Drive but don't need to select any folder to sync.<br>
- **Security & Diagnostics**: OFF (A risk if this turns off when you actually need Ratta assistance to troubleshoot your device…). <br>

## TROUBLESHOOTING
[**`^ back to top`**](#table-of-contents) <br>
**T1)** Sometimes it doesnt sync properly and gets stuck? <br>
On your SN device, syncthing → Settings →Troubleshooting → Select: <br>
- Reset Database → Select OK <br> 
- Reset Deltra Indexes → Select OK <br>
 
![image](https://github.com/user-attachments/assets/1e331d49-01ac-494b-887e-ba8df3d03b87)

Then go back to **Status** and click **FOLLOW RUN CONDITIONS** or **FORCE START**. <br>
You should see **Syncthing** is running status update just below. If not, repeat the steps above. <br>

**T2)** Why do I have many conflict files? <br>
It's probably syncing too fast between your devices. It will show on the devices and renamed filename as conflict with date etc. Just review manually and delete/remove whatever file. <br>

![image](https://github.com/user-attachments/assets/61dc4c92-30e3-4808-ae80-81c4786c97e2)

**T3)** New firmware update. How? <br>
You can download firmware online and install it offline via USB etc.
Download Firmware and Update System - Supernote


## References:
[**`^ back to top`**](#table-of-contents) <br>
- https://syncthing.net/
- https://netguard.me/
- https://www.synology.com/en-global/dsm/packages/Docker?os_ver=6.2&search=docker
- https://www.synology.com/en-global/dsm/packages/ContainerManager?os_ver=7.2&search=docker
- https://mariushosting.com/can-i-run-docker-on-my-synology-nas/
- https://mariushosting.com/synology-30-second-portainer-install-using-task-scheduler-docker/
- https://support.supernote.com/change-log/how-to-update-your-supernote?from_search=169614955
- https://github.com/Catfriend1/syncthing-android
- https://netguard.me/
- https://github.com/M66B/NetGuard/releases
- [YT: Boox "Phone Home" Issue? What Is It And How To Solve It (KSync Process)](https://www.youtube.com/watch?v=fQctTrqIQQE)








