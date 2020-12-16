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

**Install the Windows Configuration Designer to a Windows 10 PC for the company**<br/>
Download and install the tool to a Windows 10 PC<br/>
https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-install-icd<br/>
<br/>
<br/>

**Create an advanced installation using the steps in this link**<br/>
https://docs.microsoft.com/en-gb/archive/blogs/beanexpert/how-to-install-office-using-a-provisioning-package<br/>
<br/>
If you an Azure AD enrollment the token lasts for 6 months<br/>
Add a Device name such as ABC-%SERIAL%<br/>
Add a Wi-Fi profile if possible<br/>
<br/>

