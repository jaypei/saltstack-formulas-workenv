
{% from "common.jinja" import common with context %}

org-dir:
  git.latest:
    - name: git@bitbucket.org:jaypei/org.git
    - target: {{ common.work_dir }}/org
    - identity: {{ common.home_dir }}/.ssh/id_rsa
    - unless: 'ls {{ common.work_dir }}/vimwiki'

  file.directory:
    - name: {{ common.work_dir }}/org
    - user: {{ common.main_user }}
    - group: {{ common.main_group }}
    - recurse:
      - user
      - group
      - mode
