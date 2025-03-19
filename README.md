# ![pwsh](/icon/powershell.png) MSI Center/SDK Function key fixer
### Your `FN + F4/F5/F6/F7/F12` hotkeys stopped working after a [MSI Center](https://www.microsoft.com/store/productId/9NQ4LGT81KGC) update?
Use this script to patch this problem

## ⚠️ **This program is Outdated. MSI has fixed the original issue, and this temporary solution is no longer needed.** ⚠️

## About this bug
This is a bug that has been hanging around for a while in the MSI SDK. It's a bug similar to the Y2K bug that makes when the software is updated after the date of 12/28/2021, the FN key doesn't work anymore

**_I personally had this bug. I have an [MSI Creator Z16 Hiroshi Fujiwara](https://fr.msi.com/Content-Creation/Creator-Z16-Hiroshi-Fujiwara-A11UX/Overview) laptop, but looking at various forums this problem concerns products that use the [MSI Center](https://www.microsoft.com/store/productId/9NQ4LGT81KGC) application._**

# To execute the script
~~1. Go to your windows search bar and type `powershell`, right click and run as administrator~~

~~2. When your terminal is launched, execute the command: [![chevron](/icon/chevron.png)](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3)`Set-ExecutionPolicy RemoteSigned` and accept the execution of the scripts.~~

3. Execute mfkf.ps1 by right clicking on the file and execute with PowerShell
