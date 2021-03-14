#!/bin/bash
echo "Building Second Jenkins Project"
apt-get update
echo "Package update has been completed"
mkdir /var/tmp/secondproject
echo "Secondproject directory has been created"
touch /var/tmp/secondproject/fileone
echo "Hello this is done by jenkins" > /var/tmp/secondproject/fileone
echo "File created"
apt-get install -y apache2
echo "This page is created by Jenkins Build" > "/var/www/html/index.html"
systemctl restart apache2
systemctl status apache2
sleep 30
