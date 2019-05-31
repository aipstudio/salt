remove key regedit vnc:
  reg.key_absent:
    - name: HKLM\SOFTWARE\TightVNC
Setup tightvnc:
  cmd.run:
    - names:
      - 'msiexec /uninstall tightvnc-2.8.11-gpl-setup-64bit.msi /quiet /norestart'
      #- 'msiexec /i tightvnc-2.8.11-gpl-setup-64bit.msi /quiet /norestart ADDLOCAL="Server,Viewer" SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=1 SET_PASSWORD=1 VALUE_OF_PASSWORD={{ pillar['vncpassword'] }} SET_VIEWONLYPASSWORD=1 VALUE_OF_VIEWONLYPASSWORD={{ pillar['vncpassword'] }} SET_USECONTROLAUTHENTICATION=1 VALUE_OF_USECONTROLAUTHENTICATION=1 SET_CONTROLPASSWORD=1 VALUE_OF_CONTROLPASSWORD={{ pillar['vncpassword'] }}'
    - cwd: c:\aprel
