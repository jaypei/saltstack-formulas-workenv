# vim: sts=2 ts=2 sw=2 et ai
{% from "common.jinja" import common with context %}

xserver-xephyr:
  pkg.installed

awmtt:
  git.latest:
    - name: https://github.com/mikar/awmtt.git
    - target: {{ common.work_dir }}/awmtt
    - unless: "ls {{ common.work_dir }}/awmtt"
  file.managed:
    - name: {{ common.work_dir }}/awmtt/awmtt
    - mode: "0755"

awmtt-bin:
  file.symlink:
    - name: {{ common.home_dir }}/bin/awmtt
    - target: {{ common.work_dir }}/awmtt/awmtt


