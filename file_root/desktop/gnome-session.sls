# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

include:
  - dotfiles

{{ common.home_dir }}/.gnomerc:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/gnome-session/gnomerc
    - force: true

