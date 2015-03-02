Role iris-web
===============

Setup iris web app. It assume that apache and mysql are already installed.

Variables
---------

sys_user: "iris" by default
sys_group: "iris" by default
sys_user_home: "/srv/www/iris" by default

static_root: django's STATIC_ROOT setting, by default is /srv/www/iris/static
media_root: django's MEDIA_ROOT setting, by default is /srv/www/iris/media
log_path: /var/log/iris
etc_path: /etc/iris

Dependencies
------------

It depends on role "install-apache-mod", "webserver-apache" and "mysql-server"

Example Playbook
----------------

    - hosts: servers
      roles:
         - iris-web
