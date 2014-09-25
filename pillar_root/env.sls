{% set main_user = "jaypei" %}
{% set home_dir = "/home/" + main_user %}

{% if grains["os"] == "Ubuntu" %}
  {% set home_dir = "/home/" + main_user %}
{% elif grains["os"] == "MacOS" %}
  {% set home_dir = "/Users/" + main_user %}
{% endif %}

home_dir: {{ home_dir }}
work_dir: {{ home_dir }}/work
env: {}

