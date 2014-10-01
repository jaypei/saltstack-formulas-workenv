# vim: sts=2 ts=2 sw=2 et ai

awesome:
  pkg.installed

awesome-extra:
  pkg.installed

/usr/share/gnome-session/sessions/awesome.session:
  file.managed:
    source: salt://desktop/awesome/files/usr/share/applications/awesome.desktop

/usr/share/applications/awesome.desktop:
  file.managed:
    source: salt://desktop/awesome/files/usr/share/applications/awesome.desktop

/usr/share/xsessions/gnome-awesome.desktop:
  file.managed:
    source: salt://desktop/awesome/files/usr/share/xsessions/gnome-awesome.desktop

/etc/xdg/autostart/gnome-settings-daemon.desktop:
    file.managed:
    source: salt://desktop/awesome/files/etc/xdg/autostart/gnome-settings-daemon.desktop

