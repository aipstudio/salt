Configure grains to minions:
#salt * grains.ls
#salt * grains.items
{% set soft_list = salt['cmd.run']('wmic product get name,version') %}
  grains.present:
    - name: software_list
    - value: {{ soft_list }}
    - force: true
