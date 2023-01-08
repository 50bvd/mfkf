if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    exit
}

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

$newDate = Get-Date -Year 2021 -Month 12 -Day 28
Set-Date -Date $newDate

$trigger = New-ScheduledTaskTrigger -AtStartup
$action = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument '/c w32tm /resync'
$task = New-ScheduledTask -Trigger $trigger -Action $action
Register-ScheduledTask -TaskName "Resync Time" -InputObject $task
    
$wshell = New-Object -ComObject Wscript.Shell
$result = $wshell.Popup("Please restart the computer to apply the patch.", 0, "Alerte", 0x1)
if ($result -eq "1") {Restart-Computer}
