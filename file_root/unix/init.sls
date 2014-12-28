# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

/etc/default/locale:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/gnome-session/locale/locale.ubuntu
    - force: true

{{ common.home_dir }}/.Xdefaults:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/x/Xdefaults
    - force: true

{{ common.home_dir }}/.exz-profile:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/profile/ubuntu
    - force: true

{{ common.home_dir }}/.tmux.conf:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/tmux/tmux.conf
    - force: true
