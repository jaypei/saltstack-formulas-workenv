
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
      - whoopsie
    sudo_rules:
      - ALL=(ALL:ALL) NOPASSWD:ALL
