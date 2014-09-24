{% set home_dir = "/home/jaypei" %}

{% if grains["os"] == "Ubuntu" %}
  {% set home_dir = "/home/jaypei" %}
{% elif grains["os"] == "MacOS" %}
  {% set home_dir = "/Users/jaypei" %}
{% endif %}

home_dir: {{ home_dir }}
work_dir: {{ home_dir }}/work
