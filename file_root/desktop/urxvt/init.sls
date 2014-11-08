xclip:
  pkg:
    - installed

urxvt:
  pkg.installed:
    - name: rxvt-unicode
  file.managed:
    - name: {{ pillar["home_dir"] }}/.Xdefaults
    - source: salt://desktop/urxvt/files/Xdefaults

/usr/lib/urxvt/perl/clipboard:
  file.managed:
    - source: salt://desktop/urxvt/files/clipboard-script
    - mode: 755
