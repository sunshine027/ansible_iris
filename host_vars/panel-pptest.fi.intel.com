---
db_admin: root
db_admin_password:
db_name: testdb
db_user: testdbuser
db_user_password: testdbuserpassword
web_host: localhost

port: 8000
server_name: panel-pptest.fi.intel.com
iris_version: 0.2.3
repo: http://download.tizen.org/iris/archive/{{iris_version}}/openSUSE_13.1/
db_host: localhost
db_name: testdb
db_user: testdbuser
db_user_password: testdbuserpassword
cache_table: iris_views_cache

log_path: /var/log/iris

iris_product_mapping: (('Tizen:Common', 'http://download.tizen.org/snapshots/tizen/common/latest/'),
    ('Tizen:IVI', 'http://download.tizen.org/snapshots/tizen/ivi/latest/'),
    ('Tizen:Mobile', 'http://download.tizen.org/snapshots/tizen/mobile/latest/'),
    ('Tizen:Wearable', 'http://download.tizen.org/snapshots/tizen/wearable/latest/'),
    ('Tizen:TV', 'http://download.tizen.org/snapshots/tizen/tv/latest/'))

email_host: mail1.vlan103.tizen.org
server_email: noreply@panel.tizen.org

ldap_enable: False
ldap_server_uri: ldaps://ldap.tizen.org
ldap_bind_dn: cn=irisbind,dc=tizen
ldap_passwordx: base64EncodedFormOfPassword
ldap_user_dn_template: cn=%(user)s,ou=users,dc=tizen

scm_meta_git_path: git://review.tizen.org/scm/meta/git
