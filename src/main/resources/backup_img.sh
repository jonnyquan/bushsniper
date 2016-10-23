#!/bin/sh
cd /usr/java/apache-tomcat-7.0.65/webapps/ROOT/resources
tar -zcvf img_`date +%Y%m%d`.tar.gz img/*
rm -fr /qics/backup/img_`date +%Y%m%d`.tar.gz
mv *.tar.gz /qics/backup/
