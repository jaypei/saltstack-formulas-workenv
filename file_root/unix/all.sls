# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

include:
  - unix.locale
  - unix.ssh
  - unix.supercat
  - unix.tmux

{{ common.home_dir }}/.exz-profile:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/profile/ubuntu
    - force: true
