remove key regedit:
  reg.key_absent:
    - name: HKLM\SOFTWARE\TightVNC
Setup tightvnc:
  cmd.run:
    - names:
      - 'msiexec /i tightvnc-2.8.11-gpl-setup-64bit.msi /quiet /norestart SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=0'
      #- 'msiexec /i tightvnc-2.8.11-gpl-setup-64bit.msi /quiet /norestart ADDLOCAL="Server,Viewer" SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=1 SET_PASSWORD=1 VALUE_OF_PASSWORD=qwerty SET_VIEWONLYPASSWORD=1 VALUE_OF_VIEWONLYPASSWORD=qwerty SET_USECONTROLAUTHENTICATION=1 VALUE_OF_USECONTROLAUTHENTICATION=1 SET_CONTROLPASSWORD=1 VALUE_OF_CONTROLPASSWORD=qwerty'
    - cwd: c:\aprel
