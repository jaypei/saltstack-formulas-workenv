
/etc/profile.d/exz-fcitx.sh:
  file.managed:
    - source: salt://desktop/fcitx/files/etc/profile.d/exz-fcitx.sh

/etc/X11/Xsession.d/80im-switch:
  file.append:
    - sources:
      - salt://desktop/fcitx/files/80im-switch.append

