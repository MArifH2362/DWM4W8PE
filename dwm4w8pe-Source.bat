@echo OFF

title DWM For Windows 8 PE (Source)
echo ===[DWM For Windows 8 PE, Version Source Code]===
echo.
echo By default Windows PE does not have a Desktop Window Manager (DWM)
echo with this Batch Script File it works by copying the DWM with dependencies files
echo from your installed Windows 8 CP,RP,RTM and Windows 8.1 operating system
echo (Or Windows Server 2012 RC, RTM, And R2*)
echo into your desktop (temporarily)
echo then Put the DWM and Dependencies Files into the "Boot.wim" File Manually
echo (or "WinRE.wim" is also possible)
echo (*I haven't tried it yet)
echo.
echo ===[Made By @MArifH2362]===
echo.
echo If you haven't downloaded the Windows 8 and 8.1 ISO file, download it first.
echo.
pause 
cls
echo Before doing This practice, Read the Note in Down Below
echo (Scroll Down on Your Mouse or Trackpad)
echo.
echo Note 1 : For VM Users Before doing the Test
echo Create a Virtual Disk First At least 10GB Then Format As FAT32
echo Then Copying the ISO File to the New Virtual Disk
echo.
echo Note 2 : For Host Computer Make sure you have created
echo a bootable USB flash drive first of Windows 8 Installation
echo If not, create a bootable USB first
echo.
echo Note 3 : For Using ISO Editor**
echo Make Sure to Select the Windows 8 or 8.1 ISO File First
echo Then Go to the "Sources" Folder Then Move the "Boot.wim" File to Your Desktop
echo Then After Finishing Modifying, Move It Back to the Windows 8 or 8.1 ISO Again
echo Then Save the File
echo (**A Paid ISO Editor Application tool)
echo.
echo Note 4 : You may need the DISM command to mount the ".wim" file
echo then make modifications to put DWM with Dependencies Files
echo into "Boot.wim" Manually (also "WinRE.wim")
echo After completing that modification, then commit and unmount
echo or use a third-party application tool (such as File Archiver, or etc)
echo.
pause
cd "%UserProfile%\Desktop"
mkdir DWM
cd DWM
mkdir System32
cd System32
mkdir en-US
cd %SystemRoot%\System32
echo Copying DWM and Dependencies
Copy %SystemRoot%\System32\dwm.exe "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\ntdll.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\kernel32.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\KERNELBASE.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\msvcrt.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\user32.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\gdi32.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\imm32.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\dwmredir.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\dwmcore.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\dwmapi.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\msctf.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\dcomp.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\uxtheme.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\sechost.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\rpcrt4.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\Windowscodecs.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d8thk.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d9.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d10.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d10core.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d10level9.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d10_1.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d10_1core.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\dxgi.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d11.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d3d10warp.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\opengl32.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\uDWM.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\slc.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\combase.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\cRYPTBASE.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\bcryptPrimitives.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\clbcatq.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\oleaut32.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\UIAnimation.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\d2d1.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\xmllite.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\powrprof.dll "%UserProfile%\Desktop\dwm\System32"
Copy %SystemRoot%\System32\en-US\dwm.exe.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\ntdll.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\kernel32.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\KERNELBASE.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\msvcrt.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\user32.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\gdi32.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\imm32.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\dwmredir.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\dwmcore.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\dwmapi.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\msctf.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\dcomp.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\uxtheme.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\sechost.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\rpcrt4.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\Windowscodecs.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\d3d10_1.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\d3d10_1core.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\dxgi.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\d3d11.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\d3d10warp.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\uDWM.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\slc.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\combase.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\cRYPTBASE.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\bcryptPrimitives.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\clbcatq.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\oleaut32.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\UIAnimation.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\d2d1.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\xmllite.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
Copy %SystemRoot%\System32\en-US\powrprof.dll.mui "%UserProfile%\Desktop\dwm\System32\en-US"
pause
