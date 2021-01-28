# Windows-10-with-Office-USB
**Install Windows 10 including Office with a USB**<br/>
<br/>

**Create Windows 10 installation media**<br/>
Download the Windows 10 Media Creation tool<br/>
https://www.microsoft.com/en-gb/software-download/windows10 <br/>
Create a USB installer<br/>
<br/>
<br/>

**Create an Office customisation XML file**<br/>
https://config.office.com/<br/>
A sample file is in this repository<br/>
<br/>
<br/>

**Download Office using the Office Deployment Tool (ODT)**<br/>
Link to the Office Deployment tool<br/>
https://www.microsoft.com/en-us/download/details.aspx?id=49117<br/>
<br/>
Delete all the provided .xml files and copy the .xml file created previously to the folder<br/>
<br/>
When the installation is downloaded zip the whole folder to a file called O365.zip<br/>
<br/>
<br/>

**Install the Windows Configuration Designer to a Windows 
10 PC for the company**<br/>
Download and install the tool to a Windows 10 PC<br/>
https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-install-icd<br/>
<br/>
<br/>

**Create an advanced installation using the steps in this link**<br/>
https://docs.microsoft.com/en-gb/archive/blogs/beanexpert/how-to-install-office-using-a-provisioning-package<br/>
<br/>
<br/>
**Install several apps**
To install multiple applications use the following bat file
https://github.com/BenSnape/Windows-10-with-Office-USB/blob/main/InstallApps.bat
Use the follwoing in the CommandLine entry
cmd /c InstallApps.bat
<br/>
<br/>
If you add an Azure AD enrollment the token lasts for 6 months<br/>
Add a Device name such as ABC-%SERIAL%<br/>
Add a Wi-Fi profile if possible<br/>
<br/>
<br/>
Keep the .ppkg file below 4GB so the USB does not need and additional NTFS formated disk
<br/>
**Add drivers to the USB build**<br/>
Mount the wim file.<br/>
Dism /Mount-Image /ImageFile:"F:\sources\boot.wim" /index:1 /MountDir:"C:\Temp\Offline"<br/>
<br/>
Add drivers.<br/>
Dism /Add-Driver /Image:"C:\Temp\Offline" /Driver:"C:\SWSETUP\SP78930" /Recurse<br/>
<br/>
Then unmount the image and that's it.<br/>
Dism /Unmount-Image /Mountdir:"C:\Temp\Offline" /commit<br/>
<br/>
<br/>

**Clone USB**<br/>
https://www.osforensics.com/tools/write-usb-images.html<br/>
