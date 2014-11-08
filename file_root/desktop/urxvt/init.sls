# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

include:
  - dotfiles

xclip:
  pkg:
    - installed

urxvt:
  pkg.installed:
    - name: rxvt-unicode

{{ common.home_dir }}/.Xdefaults:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/gnome-session/gnomerc
    - force: true

/usr/lib/urxvt/perl/clipboard:
  file.managed:
    - source: salt://desktop/urxvt/files/clipboard-script
    - mode: 755
