
users:
  jaypei:
    fullname: ZhenPei
    shell: /usr/bin/zsh
    sudouser: True
    groups:
      - adm
      - cdrom
      - sudo
      - dip
      - plugdev
      - lpadmin
      - sambashare
    sudo_rules:
      - ALL=(ALL:ALL) NOPASSWD:ALL
