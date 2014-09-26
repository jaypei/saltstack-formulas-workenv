xmonad:
  pkg.installed

gnome-settings-daemon:
  pkg.installed

gnome-panel:
  pkg.installed

xmonad_dotfiles:
  file.recurse:
    - name: {{ pillar["home_dir"] }}/.xmonad
    - source: salt://desktop/xmonad/files/xmonad
    - include_empty: True
  cmd:
    - wait
    - name: "xmonad --recompile"
    - watch:
      - file: xmonad_dotfiles
