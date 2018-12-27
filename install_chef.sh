#! /bin/bash -e
# Crappier version of this - https://github.com/facastagnini/raspberry-bitcoin/blob/master/bootstrap.sh
sudo apt-get purge ruby1.9 ruby1.8 -y
sudo apt-get autoremove --purge -y
sudo apt-get update
sudo apt-get install -y libssl-dev
sudo dphys-swapfile setup
sudo dphys-swapfile swapon


cd /tmp/
rm -rf * || true
wget http://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.3.tar.gz
tar -xvzf ruby-2.5.3.tar.gz
cd ruby-2.5.3
sudo ./configure --enable-shared --disable-install-doc --disable-install-rdoc --disable-install-capi
sudo make install
sudo gem install chef --no-ri --no-rdoc
