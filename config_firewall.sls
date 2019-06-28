Configure firewall policy:
  cmd.run:
    - names:
#      - 'netsh advfirewall firewall delete rule name="Open Port Oracle 1521" protocol=TCP localport=1521'
#      - 'netsh advfirewall firewall add rule name="Open Port Oracle 1521" dir=in action=allow protocol=TCP localport=1521'
      - 'netsh advfirewall firewall add rule name="All ICMP V4" protocol=icmpv4:any,any dir=in action=allow'
#      - 'netsh advfirewall firewall add rule name="My Application" dir=in action=allow program="C:\MyApp\MyApp.exe" enable=yes'
