
nginx:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - reload: True
    - watch:
        - file: /etc/nginx/sites-available/pz-web.conf

/etc/nginx/sites-available/pz-web.conf:
  file.managed:
    - source: salt://nginx/files/pz-web.conf

/etc/nginx/sites-enabled/pz-web.conf:
  file.symlink:
    - target: /etc/nginx/sites-available/pz-web.conf
    - requires:
        - file: /etc/nginx/sites-available/pz-web.conf

