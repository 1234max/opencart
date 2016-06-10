#!/bin/bash
apt-get install -y composer
unzip 2.2.0.0-compiled.zip
mv 2.2.0.0-compiled opencart
cd opencart
cd upload
cp config-dist.php config.php
cp admin/config-dist.php admin/config.php
chmod 0755 system/storage/cache/
chmod 0755 system/storage/logs/
chmod 0755 system/storage/download/
chmod 0755 system/storage/upload/
chmod 0755 system/storage/modification/
chmod 0755 image/
chmod 0755 image/cache/
chmod 0755 image/catalog/
chmod 0755 config.php
chmod 0755 admin/config.php
cd ..
composer install
