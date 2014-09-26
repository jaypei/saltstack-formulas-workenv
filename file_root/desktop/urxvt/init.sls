urxvt:
  pkg.installed:
    - name: rxvt-unicode
  file.managed:
    - name: {{ pillar["home_dir"] }}/.Xdefaults
    - source: salt://desktop/urxvt/files/Xdefaults
