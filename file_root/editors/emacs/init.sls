
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
  file.directory:
    - name: {{ emacs_project_dir }}
    - user: jaypei
    - recurse:
      - user

emacs.d_dotfile:
  file.symlink:
    - name: {{ emacs_dotfile_dir }}
    - target: {{ emacs_project_dir }}
    - require:
      - git: emacs.d_project

# elpa cache
elpa_cache_project:
  git.latest:
    - name: "git@git.oschina.net:jaypei/emacs.d-elpa-cache-1.git"
    - target: {{ emacs_project_dir }}/elpa
    - identity: {{ pillar["home_dir"] }}/.ssh/id_rsa
    - unless: "ls {{ emacs_project_dir }}/elpa"
  file.directory:
    - name: {{ emacs_project_dir }}/elpa
    - user: jaypei
    - recurse:
      - user

