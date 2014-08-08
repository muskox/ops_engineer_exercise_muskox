nginx:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: nginx

/var/log/nginx/service:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644

/var/log/nginx/service/access.log:
  file:
    - touch
    - user: root
    - group: root
    - mode: 644

/etc/logrotate.d/nginx:
  file:
    - managed
    - source: salt://nginx/logrotate_nginx

/etc/crontab:
  file.append:
    - text:
      - 0 */3 * * * root logrotate -f /etc/logrotate.d/nginx

