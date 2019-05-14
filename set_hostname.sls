Set minion_id where name=fqdn:
  file.managed:
    - name: c:\salt\conf\minion_id
    - contents:
      - {{ grains['fqdn'] }}

Restart Salt Minion:
  module.run:
    - name: service.restart
    - m_name: salt-minion