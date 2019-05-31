delete files msu from c:\:
  file.absent:
    - names:
      - c:\Windows6.0-KB2999226-x64.msu
      - c:\Windows6.1-KB2999226-x64.msu
      - c:\Windows8.1-KB2999226-x64.msu
      - c:\Windows8-RT-KB2999226-x64.msu
