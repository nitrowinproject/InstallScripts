Start-Process -FilePath "winget.exe" -Wait -NoNewWindow -ArgumentList "install --id Microsoft.PowerShell --exact --scope machine --accept-package-agreements --accept-source-agreements --interactive"
