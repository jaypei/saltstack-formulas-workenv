# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

include:
  - dotfiles

supercat:
  pkg.installed

{{ common.home_dir }}/.spcrc:
  file:
    - directory

{{ common.home_dir }}/.spcrc/spcrc:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/supercat/spcrc
    - force: true
