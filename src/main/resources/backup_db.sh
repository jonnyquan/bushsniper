#!/bin/sh
mysqldump -uroot -proot --databases bushsniper > /qics/backup/db_`date +%Y%m%d`.sql
cd /qics/backup
tar -zcvf db_`date +%Y%m%d`.tar.gz db_`date +%Y%m%d`.sql
rm -fr db_`date +%Y%m%d`.sql
