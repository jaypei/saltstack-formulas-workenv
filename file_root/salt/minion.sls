{% from "salt/package-map.jinja" import pkgs with context %}

salt-minion:
  pkg.installed:
    - name: {{ pkgs['salt-minion'] }}
  file.managed:
    - name: /etc/salt/minion.d/minion.conf
    - template: jinja
    - source: salt://salt/files/minion.d/minion.conf
  service.dead:
    - enable: False
    - watch:
      - pkg: salt-minion
      - file: salt-minion
