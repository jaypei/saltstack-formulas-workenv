
im-switch:
  pkg:
    - installed

fcitx:
  pkg:
    - installed

fcitx-googlepinyin:
  pkg:
    - installed

/etc/profile.d/exz-fcitx.sh:
  file.managed:
    - source: salt://desktop/fcitx/files/etc/profile.d/exz-fcitx.sh

/etc/X11/Xsession.d/80im-switch:
  file.append:
    - sources:
      - salt://desktop/fcitx/files/80im-switch.append
    - requires:
      - pkg: im-switch

/usr/share/dbus-1/services/org.freedesktop.IBus.service:
  file.managed:
    - sources:
      - salt://desktop/fcitx/files/org.freedesktop.IBus.service

/usr/bin/ibus:
  file.symlink:
    - target: /bin/false
    - force: True

/usr/bin/ibus-setup:
  file.symlink:
    - target: /bin/false
    - force: True

/usr/bin/ibus-daemon:
  file.symlink:
    - target: /bin/false
    - force: True
