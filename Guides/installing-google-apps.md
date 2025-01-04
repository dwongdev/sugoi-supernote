# Guide for installing Google apps

Credits to [jfkp88](https://www.reddit.com/user/jfkp88/) on Reddit. <br>
The original steps as below. I did manage to install it on the A6X. Slight deviation for rooting and MicroG installation. Will update later for the exact steps when I get some spare time <br>
**Source:** https://www.reddit.com/r/Supernote/comments/1gbelab/guide_for_installing_google_apps/

This has been tested on an A6X2 device within Chauvet 3.17.29.

1) Save all your data.
2) Factory reset your device.
3) Allow sideloading in settings.
4) Sideload and install Magisk. If you don't know how to do this... look it up.
5) Activate zygisk in Magisk.
6) Install [LSPosed](https://github.com/LSPosed/LSPosed) Magisk module.
- N.b. to install a Magisk module within Chauvet you'll need to sideload a file manager first.
- N.b. To push the file into the download folder (and retrieve it for install) use: `adb push YOURFILE /storage/emulated/0/Download`
7) Sideload [LSPosed Manager](https://lsposed.en.uptodown.com/android).
8) Sideload [FakeGapps](https://github.com/whew-inc/FakeGApps/releases) and enable it in LSposed Manager.
9) Install [nift4's MicroG](https://github.com/nift4/microg_installer_revived) Magisk module in Magisk.
10) Sideload [MicroG](https://github.com/nift4/microg_installer_revived/raw/master/system/priv-app/microG/microG.apk).
11) Sideload (for instance) Google Drive.
12) Enable Google Drive in FakeGapps. Always repeat this step with other Google apps before opening them.
13) Open Google Drive and log in.

## Working screenshots
**Tested** on ***A6X Chauvet 2.18.30***. <br>
**Date:** 30/12/24. <br>

Google Drive: <br>
![image](https://github.com/user-attachments/assets/55250a62-3c72-4329-b081-3937bf0faa02)

Google Docs: <br>
![image](https://github.com/user-attachments/assets/0c66d7ce-9d94-434a-8985-944955de7351)

Google Sheets: <br>
![image](https://github.com/user-attachments/assets/9e87617f-de1e-47e2-9a83-e4192b6b0fad)
