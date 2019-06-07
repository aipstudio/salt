Copy directory recursive starter:
  file.recurse:
    - name: c:\starter
    - source: salt://starter
    - include_empty: True

Copy link file from Statrer.exe:
  file.managed:
    - names:
      - C:\Users\Public\Desktop\Starter.lnk:
        - source: salt://starter/Starter.lnk
