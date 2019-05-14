update regedit from oracle 1:
  reg.present:
    - name: HKLM\SOFTWARE\WOW6432Node\Oracle\KEY_XEClient
    - vname: NLS_LANG
    - vdata: RUSSIAN_RUSSIA.CL8MSWIN1251
    - vtype: REG_SZ

update regedit from oracle 2:
  reg.present:
    - name: HKLM\SOFTWARE\WOW6432Node\Oracle\KEY_XEClient
    - vname: ORACLE_HOME
    - vdata: c:\xeclient
    - vtype: REG_SZ

update regedit from oracle 3:
  reg.present:
    - name: HKLM\SOFTWARE\WOW6432Node\Oracle\KEY_XEClient
    - vname: ORACLE_BASE
    - vdata: c:\xeclient
    - vtype: REG_SZ

update regedit from oracle 4:
  reg.present:
    - name: HKLM\SOFTWARE\WOW6432Node\Oracle\KEY_XEClient
    - vname: ORACLE_HOME_NAME
    - vdata: XEClient
    - vtype: REG_SZ

update regedit from oracle 5:
  reg.present:
    - name: HKLM\SOFTWARE\WOW6432Node\Oracle\KEY_XEClient
    - vname: ORACLE_HOME_KEY
    - vdata: SOFTWARE\ORACLE\KEY_XEClient
    - vtype: REG_SZ
