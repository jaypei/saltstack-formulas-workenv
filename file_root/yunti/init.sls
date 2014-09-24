
ip-pre-up:
  file.managed:
    - name: /etc/ppp/ip-pre-up
    - source: salt://yunti/files/ip-pre-up
    - mode: 755

ip-down:
  file.managed:
    - name: /etc/ppp/ip-down.d/ip-down
    - source: salt://yunti/files/ip-down
    - mode: 755

