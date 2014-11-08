chromium-browser:
  pkg.installed

flashplugin-installer:
  pkg.installed

pepperflashplugin-nonfree:
  pkg.installed:
    - requires:
      - pkg: chromium-browser
