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

{% for df_name in ("dotfiles-unix", "dotfiles-awesome") %}
{{ df_name }}:
  git.latest:
    - name: "git@github.com:jaypei/{{ df_name }}.git"
    - target: {{ common.dotfiles_dir }}/{{ df_name }}
    - identity: {{ common.privkey_main }}
    - unless: "ls {{ common.dotfiles_dir }}/{{ df_name }}/.git"
  file.directory:
    - name: {{ common.dotfiles_dir }}/{{ df_name }}
    - user: {{ common.main_user }}
    - group: {{ common.main_group }}
    - recurse:
      - user
      - group

{% endfor %}

dotfiles-own:
  git.latest:
    - name: "git@bitbucket.org:jaypei/dotfiles-own.git"
    - target: {{ common.dotfiles_dir }}/dotfiles-own
    - identity: {{ common.privkey_main }}
    - unless: "ls {{ common.dotfiles_dir }}/dotfiles-own/.git"
  file.directory:
    - name: {{ common.dotfiles_dir }}/dotfiles-own
    - user: {{ common.main_user }}
    - group: {{ common.main_group }}
    - recurse:
      - user
      - group
