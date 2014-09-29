/etc/X11/Xsession.d/80im-switch:
  file.append:
    - sources:
      - salt://desktop/x/files/80im-switch.append

home-dotfile-gnomerc:
  file.managed:
    - name: {{ pillar["work_dir"] }}/.gnomerc
    - sources:
        - salt://desktop/x/files/gnomerc