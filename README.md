# ![alt text](https://50bvd.com/img/icon/icons8-powershell-48.png) MSI Function key fixer
### Your `FN + F4/F5/F7` hotkeys stopped working after a MSI center update?
Use this script to patch this problem

# what I found about this bug
This is a bug that has been hanging around for a while in the MSI SDK. It's a bug similar to the Y2K bug that makes when the software is updated after the date of 12/28/2021, the FN key doesn't work anymore

# To execute the script
[^1]:
1. Go to your windows search bar and type `powershell`, right click and run as administrator
2. When your terminal is launched, execute the command: ![png](https://github.com/50bvd/mfkf/raw/main/icon/icons8-chevron-right-24.png)`Set-ExecutionPolicy RemoteSigned` and accept the execution of the scripts.
3. Execute mfkf.ps1 by right clicking on the file and execute with PowerShell
