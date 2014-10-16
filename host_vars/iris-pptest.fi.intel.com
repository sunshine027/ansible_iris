---
db_admin: root
db_admin_password:
db_name: testdb
db_user: testdbuser
db_user_password: testdbuserpassword
web_host: localhost

port: 8000
server_name: iris-pptest.fi.intel.com
repo: http://download.otctools.jf.intel.com/IRIS:/Devel/openSUSE_13.1/
db_host: localhost
db_name: testdb
db_user: testdbuser
db_user_password: testdbuserpassword

user: iris
log_path: /var/log/iris

iris_product_mapping: (('Tizen:Common', 'http://download.tizen.org/snapshots/tizen/common/latest/'),
    ('Tizen:IVI', 'http://download.tizen.org/snapshots/tizen/ivi/ivi/latest/'))

email_host: mail1.vlan103.tizen.org
server_email: noreply@panel.tizen.org

ldap_enable: False
ldap_server_uri: ldaps://ldap.tizen.org
ldap_bind_dn: cn=irisbind,dc=tizen
ldap_passwordx: base64EncodedFormOfPassword
ldap_user_dn_template: cn=%(user)s,ou=users,dc=tizen

scm_meta_git_path: git://review.tizen.org/scm/meta/git
