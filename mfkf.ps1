#adm verif exec
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $arguments = "& {Set-ExecutionPolicy Bypass -Scope Process -Force; & '" + $myinvocation.mycommand.definition + "'}"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    exit
}
#ascii art
Write-Output "
 _____ ______   ________ ___  __    ________ 
|\   _ \  _   \|\  _____\\  \|\  \ |\  _____\
\ \  \\\__\ \  \ \  \__/\ \  \/  /|\ \  \__/ 
 \ \  \\|__| \  \ \   __\\ \   ___  \ \   __\
  \ \  \    \ \  \ \  \_| \ \  \\ \  \ \  \_|
   \ \__\    \ \__\ \__\   \ \__\\ \__\ \__\ 
    \|__|     \|__|\|__|    \|__| \|__|\|__| 
                                             
            https://github.com/50bvd                               
"
#var
$newDate = Get-Date -Year 2021 -Month 12 -Day 28
$trigger = New-ScheduledTaskTrigger -AtStartup
$action = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument '/c w32tm /resync'
$task = New-ScheduledTask -Trigger $trigger -Action $action
$wshell = New-Object -ComObject Wscript.Shell
$result = $wshell.Popup("Please restart the computer to apply the patch.", 0, "Alerte", 0x1)
#change date
Set-Date -Date $newDate
#schedule 4 resync time at reboot
Register-ScheduledTask -TaskName "Resync Time" -InputObject $task
#reboot after exec    
if ($result -eq "1") {Restart-Computer}
