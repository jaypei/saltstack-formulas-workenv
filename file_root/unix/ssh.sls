# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

{{ common.home_dir }}/.ssh:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-own/ssh
