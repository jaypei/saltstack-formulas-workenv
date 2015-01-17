# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

{{ common.home_dir }}/.tmux.conf:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/tmux/tmux.conf
    - force: true
