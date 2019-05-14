Setup vcredist:
  cmd.run:
    - names:
      - vcredist_2013_x64.exe /install /quiet
      - vcredist_2013_x86.exe /install /quiet
      - vcredist_2015_x64.exe /install /quiet
      - vcredist_2015_x86.exe /install /quiet
#      - dotnetfx35.exe /passive /norestart
      - DISM /Online /Enable-Feature /FeatureName:NetFx3 /All
#      - SETX /M PATH="%PATH%;C:\xeclient\"
    - cwd: c:\aprel
