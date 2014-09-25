#!jinja|yaml

{% from "zsh/defaults.yaml" import rawmap with context %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('zsh:lookup')) %}
{% set zshrc_dotpath = pillar["home_dir"] + "/.zshrc" %}
{% set profile_dotpath = pillar["home_dir"] + "/.exz_profile" %}
{% set oh_my_zsh_path = pillar["work_dir"] + "/oh-my-zsh" %}
{% set oh_my_zsh_dotpath = pillar["home_dir"] + "/.oh-my-zsh" %}

include: {{ datamap.sls_include|default([]) }}
extend: {{ datamap.sls_extend|default({}) }}

zsh:
  pkg:
    - installed
    - pkgs: {{ datamap.pkgs }}
  file.managed:
    - name: {{ zshrc_dotpath }}
    - source: salt://zsh/files/zshrc

profile:
  file.managed:
    - name: {{ profile_dotpath }}
    - source: salt://zsh/files/exz_profile


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

