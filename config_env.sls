update regedit from oracle 1:
  reg.present:
    - name: HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
    - vname: NLS_LANG
    - vdata: RUSSIAN_RUSSIA.CL8MSWIN1251
    - vtype: REG_SZ

update regedit from oracle 2:
  reg.present:
    - name: HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
    - vname: PATH
    - vdata: 'C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;c:\salt\bin\lib\site-packages\pywin32_system32;c:\xeclient'
    - vtype: REG_SZ
