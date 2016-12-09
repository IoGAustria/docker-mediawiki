# What is MediaWiki?

MediaWiki is a free and open-source wiki app, used to power wiki websites such
as Wikipedia, Wiktionary and Commons, developed by the Wikimedia Foundation and
others.

> [wikipedia.org/wiki/MediaWiki](https://en.wikipedia.org/wiki/MediaWiki)

# How to use this image with docker-compose

 - make a copy of the file docker-compose-template.yml and name it docker-compose.yml

    cp docker-compose-template.yml docker-compose.yml

 - replace the variables **MYSQL_PORT**, **HTTP_PORT**, **ROOT_MYSQL_PASSWORD** and **MYSQL_PASSWORD** with appropriate values
 - execute docker-compose in order to build and run the container

    docker-compose up

 - access the now running wiki at http://localhost:**HTTP_PORT** and perform the installation
 - use the generated LocalSetting.php and extend it by the LDAP-contiguration as shown in the LocalSettings-template.php
   - place LocalSetting.php in the wiki docker container by executing
   
    docker cp LocalSetting.php dockermediawiki_iog-mediawiki_1:/var/www/html/
   
 - create the missing MYSQL table ldap_domains using the sql statements in ldap_domains.sql
 
    docker exec -it dockermediawiki_iog-mediawiki-mysql_1 /bin/bash
    $ mysql -u root -p mediawiki
    $ CREATE TABLE ...(see ldap_domains.sql)


