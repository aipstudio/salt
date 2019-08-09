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
        Выбрать текущую схему управления питанием:
            Текущая схема управления питанием: Высокая производительность
        Отключить дисплей (питание от сети):
            Отключить дисплей (в секундах): 1800
        ActiveHours:
            ActiveHoursStartTime: "07:00"
            ActiveHoursEndTime: "22:00"
    - policy_class: machine
    - adml_language: ru-RU
    {% endif %}

#Run myscript gpupdate:
#  cmd.run:
#    - name: gpupdate.exe /force

update power plane:
  cmd.run:
    - name: powercfg -SETACVALUEINDEX 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0

update regedit UAC:
  reg.present:
    - name: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
    - vname: EnableLUA
    - vdata: 1
    - vtype: REG_DWORD

update regedit AutoEndTask:
  cmd.run:
    - name: reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v AutoEndTask /t REG_SZ /d 1
