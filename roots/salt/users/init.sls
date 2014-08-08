{% for user in pillar.get('users') %}

{% set user_key = pillar['users'][user]['ssh_key'] %}

{{user}}-user:
  user.present:
    - name: {{user}}

{{user}}-ssh_key:
  ssh_auth:
    - present
    - user: {{user}}
    - enc: ssh-rsa
    - names:
      - {{user_key}}
    - require:
      - user: {{user}}

{% endfor %}
