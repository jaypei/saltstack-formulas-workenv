
{% set emacs_project_dir = pillar["work_dir"] + "/emacs.d" %}
{% set emacs_dotfile_dir = pillar["home_dir"] + "/.emacs.d" %}

emacs:
  pkg:
    - installed

emacs.d_project:
  git.latest:
    - name: "git@github.com:jaypei/emacs.d.git"
    - target: {{ emacs_project_dir }}
    - identity: {{ pillar["home_dir"] }}/.ssh/id_rsa
    - unless: "ls {{ emacs_project_dir }}"

emacs.d_dotfile:
  file.symlink:
    - name: {{ emacs_dotfile_dir }}
    - target: {{ emacs_project_dir }}
    - require:
      - git: emacs.d_project


