$ShortcutPath = "$(Get-DesktopFolder)\WinUtil.lnk"
$TargetPath = "%windir%\System32\WindowsPowerShell\v1.0\powershell.exe"
$Arguments = "-Command `"irm 'https://christitus.com/win' | iex`""
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $TargetPath
$Shortcut.Arguments = $Arguments
$Shortcut.Save()
$bytes = [System.IO.File]::ReadAllBytes($ShortcutPath)
$bytes[0x15] = $bytes[0x15] -bor 0x20
[System.IO.File]::WriteAllBytes($ShortcutPath, $bytes)
