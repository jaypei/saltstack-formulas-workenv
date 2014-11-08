# vim: sts=2 ts=2 sw=2 et ai

{% from "common.jinja" import common with context %}
{% from "editor/vim/map.jinja" import vim with context %}

include:
  - dotfiles

vim:
  pkg:
    - installed

vim-gtk:
  pkg:
    - installed

vim_rcfile:
  file.symlink:
    - name: {{ vim.rcfile }}
    - target: {{ common.dotfiles_exz }}/vimconf/_vimrc
    - require:
      - git: exz_conf_project

vim_rcdir:
  file.symlink:
    - name: {{ vim.rcdir }}
    - target: {{ common.dotfiles_exz }}/vimconf/vimfiles
    - require:
      - git: exz_conf_project
