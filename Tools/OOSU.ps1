Get-FileFromURL -url "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -outpath (New-Object -ComObject Shell.Application).NameSpace('shell:Desktop').Self.Path
