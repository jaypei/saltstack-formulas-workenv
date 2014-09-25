
vimwiki_project:
  git.latest:
    - name: git@git.oschina.net:jaypei/vimwiki.git
    - target: {{ pillar["work_dir"] }}/vimwiki
    - identity: {{ pillar["home_dir"] }}/.ssh/id_rsa
    - unless: 'ls {{ pillar["work_dir"] }}/vimwiki'
  file.directory:
    - name: {{ pillar["work_dir"] }}/vimwiki
    - user: jaypei
    - group: jaypei
    - recurse:
      - user
      - group
      - mode

org_link:
  file.symlink:
    - name: {{ pillar["work_dir"] }}/org
    - target: {{ pillar["work_dir"] }}/vimwiki/org
    - user: jaypei
    - group: jaypei
    - require:
      - git: vimwiki_project
