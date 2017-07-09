sudo apt-get -y update
sudo apt-get -y install nano git
sudo apt-get -y install avahi-utils python-pip python-setuptools

sudo pip install configobj
sudo pip install requests
sudo pip install mock
sudo pip install responses

echo "installing other packages..." 
sudo apt-get -y install imagemagick libjpeg-turbo8-dev libfreetype6-dev zlib1g-dev liblcms2-dev liblcms-utils libtiff5-dev python-dev libwebp-dev apache2 libapache2-mod-wsgi

sudo pip install Pillow


cd /home/vagrant

mkdir -p cache
mkdir -p logs
mkdir -p www

git clone https://github.com/loris-imageserver/loris.git
cd loris
./setup.py install --image-cache "/home/vagrant/cache" --www-dir "/home/vagrant/www" --log-dir "/home/vagrant/logs" --source-images "/home/vagrant/images" --info-cache "/home/vagrant/cache" --kdu-expand "/home/vagrant/loris/bin/Linux/x86_64/kdu_expand" --libkdu "/home/vagrant/loris/lib/Linux/x86_64" --loris-owner "vagrant" --loris-group "vagrant"