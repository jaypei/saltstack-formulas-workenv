# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

/etc/default/locale:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/gnome-session/locale/locale.ubuntu
    - force: true
