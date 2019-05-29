Local group policy user:
  lgpo.set:
    {% if grains['os'] == 'Windows' and grains['osrelease'] == '10' %}
    - user_policy:
        Wallpaper:
            WallpaperName: C:\aprel\wallpaper.jpg
            WallpaperStyle: Растянуть
#    - policy_class: user
    - adml_language: ru-RU
    {% endif %}
