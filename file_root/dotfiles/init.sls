
{% set exz_conf_project_dir = pillar["work_dir"] + "/exz-conf" %}

exz_conf_project:
  git.latest:
    - name: "git@github.com:jaypei/exz-conf"
    - target: {{ exz_conf_project_dir }}
    - identity: {{ pillar["home_dir"] }}/.ssh/id_rsa
    - unless: "ls {{ exz_conf_project_dir }}"
  file.directory:
    - name: {{ exz_conf_project_dir }}
    - user: jaypei
    - group: jaypei
    - recurse:
      - user
      - group
      - mode

