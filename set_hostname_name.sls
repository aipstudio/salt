Set minion_id where name=set:
  file.managed:
    - name: c:\salt\conf\minion_id
    - contents:
      - ob_lenovo16u.apteka.aprel

Restart Salt Minion:
  module.run:
    - name: service.restart
    - m_name: salt-minion