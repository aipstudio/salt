powershell run enable restore:
  cmd.run:
    - names:
      - enable-computerrestore -drive 'C:\'
      - 'iex "VSSAdmin Resize ShadowStorage /For=C: /On=C: /MaxSize=5%"'
#    - stateful: False
    - shell: powershell
