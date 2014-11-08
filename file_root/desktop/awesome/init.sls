# vim: sts=2 ts=2 sw=2 et ai

{% from "common.jinja" import common with context %}

include:
  - desktop.awesome.awmtt
  - desktop.gnome-session
  - dotfiles

awesome-ppa:
  pkgrepo.managed:
    - ppa: klaus-vormweg/awesome

awesome:
  pkg.installed:
    - requires:
      - pkgrepo: awesome-ppa

awesome-extra:
  pkg.installed

shutter:
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

# autotstarts


dotfiles:
  file.symlink:
    - name: {{ common.home_dir }}/.config/awesome
    - target: {{ common.dotfiles_dir }}/dotfiles-awesome
    - force: true
