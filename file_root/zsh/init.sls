#!jinja|yaml
{% from "common.jinja" import common with context %}
{% from "zsh/defaults.yaml" import rawmap with context %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('zsh:lookup')) %}
{% set zshrc_dotpath = pillar["home_dir"] + "/.zshrc" %}
{% set profile_dotpath = pillar["home_dir"] + "/.exz_profile" %}
{% set oh_my_zsh_path = pillar["work_dir"] + "/oh-my-zsh" %}
{% set oh_my_zsh_dotpath = pillar["home_dir"] + "/.oh-my-zsh" %}

include: {{ datamap.sls_include|default([]) }}
extend: {{ datamap.sls_extend|default({}) }}

{{ common.home_dir }}/.zshrc:
  file.symlink:
    - target: {{ common.dotfiles_dir }}/dotfiles-unix/zsh/zshrc

oh-my-zsh:
  git.latest:
    - name: https://github.com/robbyrussell/oh-my-zsh.git
    - target: {{ oh_my_zsh_path }}
    - unless: "ls {{ oh_my_zsh_path }}"
  file.symlink:
    - name: {{ oh_my_zsh_dotpath }}
    - target: {{ oh_my_zsh_path }}
    - require:
      - git: oh-my-zsh
