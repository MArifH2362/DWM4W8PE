# DWM4W8PE
DWM4W8PE is a batch script file tool that copies DWM and dependencies from Windows 8 CP, RP, RTM, and Windows 8.1
(Also Work On Windows Server 2012 RC, RTM, And R2*) to Windows 8/8.1 PE**
===
*I haven't tried it yet
**May require manually placing files in Boot.wim and WinRE.wim

Note : Sorry if my English is not very good, especially since I'm still using translation (but I can still understand the language, hehee)

Preparation:
1. Make sure you have a Windows 8/8.1 ISO file.
2. Make sure you have File Archiver extractor tool
3. Use DISM to mount, commit, and then unmount. (or you can use File Archiver extractor tool)
4. Custom ISO or flash to a USB flash drive.

Here's how:
1. Extract the Windows 8/8.1 ISO file, or copy "Boot.wim" to the Windows 8/8.1 ISO file (anywhere, for example, saving it to your desktop is also possible).
2. Run "DWM4W8PE-(Version)-Setup.bat" as administrator (right-click).
3. Press any key, and the "DWM\System32\en-US" folder will automatically be created.
4. Step For DISM
5. BOOT.WIM To Mount : DISM /Mount-image /imagefile:C:\Users\Examples\Boot.wim /Index:2 /MountDir:<target_mount_directory>
6. WINRE.WIM To Mount: DISM /Mount-image /imagefile:C:\Users\Examples\WinRE.wim /Index:1 /MountDir:<target_mount_directory>
7. To Unmount : Dism /Unmount-Image /MountDir:<target_mount_directory> /Commit
8. You Can Edit ISO Editor to Replace For Boot.wim or WinRE.wim Manually, Or You Can Replace For Boot.wim or WinRE.wim Manually To Your Any Drive, Example : USB Bootable Flash Drive Contains Windows 8/8.1 Installer

And After That It's Done

Made By @MArifH2362
