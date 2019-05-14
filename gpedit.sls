Local group policy machine:
  lgpo.set:
    {% if grains['os'] == 'Windows' and grains['osrelease'] == '10' %}
    - computer_policy:
        Запретить использование OneDrive для хранения файлов: Enabled
        Отключить приложение Store: Enabled
        Отключить все приложения из Microsoft Store: Enabled
        Выключить автоматическую загрузку и установку обновлений: Enabled
        Макет начального экрана:
            Файл макета начального экрана: C:\aprel\Start.xml
        Отключить восстановление системы: Disabled
        Настроить запрашиваемую удаленную помощь: Disabled
        Настроить предлагаемую удаленную помощь: Disabled
    - policy_class: machine
    - adml_language: ru-RU
    {% endif %}
Run myscript:
  cmd.run:
    - name: gpupdate.exe /force