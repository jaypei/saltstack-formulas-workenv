# vim: sts=2 ts=2 sw=2 et ai

{% from "common.jinja" import common with context %}


awesome:
  pkg.installed

awesome-extra:
  pkg.installed

/usr/share/gnome-session/sessions/awesome.session:
  file.managed:
    - source: salt://desktop/awesome/files/usr/share/gnome-session/sessions/awesome.session
    - makedirs: True

/usr/share/applications/awesome.desktop:
  file.managed:
    - source: salt://desktop/awesome/files/usr/share/applications/awesome.desktop
    - makedirs: True

/usr/share/xsessions/awesome-gnome.desktop:
  file.managed:
    - source: salt://desktop/awesome/files/usr/share/xsessions/awesome-gnome.desktop
    - makedirs: True

/etc/xdg/autostart/gnome-settings-daemon.desktop:
  file.managed:
    - source: salt://desktop/awesome/files/etc/xdg/autostart/gnome-settings-daemon.desktop
    - makedirs: True

xserver-xephyr:
  pkg.installed

awmtt:
  git.latest:
    - name: https://github.com/mikar/awmtt.git
    - target: {{ common.work_dir }}/awmtt
    - unless: "ls {{ common.work_dir }}/awmtt"

