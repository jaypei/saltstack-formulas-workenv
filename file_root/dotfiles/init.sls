# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

exz_conf_project:
  git.latest:
    - name: "git@github.com:jaypei/exz-conf"
    - target: {{ common.dotfiles_exz }}
    - identity: {{ common.privkey_main }}
    - unless: "ls {{ common.dotfiles_exz }}"
  file.directory:
    - name: {{ common.dotfiles_exz }}
    - user: jaypei
    - group: jaypei
    - recurse:
      - user
      - group
      - mode

