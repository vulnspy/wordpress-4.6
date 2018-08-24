#!/bin/bash

service mysqld start || service mysql start && mysql -u root -ptoor -e 'create database wordpress;';
wget -O /var/www/html/wordpress-4.6.tar.gz http://test-1251457471.cosgz.myqcloud.com/WordPress-4.6.tar.gz && tar -zxf /var/www/html/wordpress-4.6.tar.gz -C /var/www/html && mv /var/www/html/WordPress-4.6/* /var/www/html/ && rm -rf /var/www/html/WordPress-4.6;
rm -rf /var/www/html/wordpress-4.6.tar.gz;
chmod -R 777 /var/www/html;
sed -i "s/dc_eximconfig_configtype='local'/dc_eximconfig_configtype='internet'/" /etc/exim4/update-exim4.conf.conf;
#sed -i "s/local_sender_retain = true/local_sender_retain = false/" /etc/exim4/exim4.conf.template;
#mv /etc/exim4/exim4.conf.template /etc/exim4/exim4.conf;
#rm /var/log/exim4/paniclog;
#sed -i "s/dc_eximconfig_configtype='local'/dc_eximconfig_configtype='smarthost'/" /etc/exim4/update-exim4.conf.conf;
#sed -i "s/dc_smarthost=''/dc_smarthost='smtp.exmail.qq.com'/" /etc/exim4/update-exim4.conf.conf;
#echo "smtp.exmail.qq.com:demo@vulnspy.com:password" >> /etc/exim4/passwd.client;
/etc/init.d/exim4 restart;
