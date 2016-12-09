CREATE TABLE ldap_domains (domain_id INTEGER PRIMARY KEY AUTO_INCREMENT,domain TEXT,user_id int(10) unsigned);
CREATE INDEX user_id on ldap_domains (user_id);
