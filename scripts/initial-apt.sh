#!/bin/bash

sudo aptitude update
sudo aptitude -y dist-upgrade
sudo aptitude install -y autoremove
sudo aptitude install -y curl libcurl4-openssl-dev
sudo aptitude install -y zlib1g-dev libssl-dev libexpat1-dev
sudo aptitude install -y vim-nox
sudo aptitude install -y subversion
sudo aptitude install -y git-core
sudo aptitude install -y ruby-full

echo Installing ruby gems
cd /usr/local/src
sudo wget http://rubyforge.org/frs/download.php/70696/rubygems-1.3.7.tgz
sudo tar -zvxf rubygems-1.3.7.tgz
cd rubygems-1.3.7/
sudo ruby setup.rb

echo Installing rake
cd /usr/local/src
sudo wget http://rubyforge.org/frs/download.php/56872/rake-0.8.7.tgz
sudo tar -xzvf rake-0.8.7.tgz
cd rake-0.8.7/
sudo ruby install.rb

echo Symlinking...
sudo ln -s /usr/bin/gem1.8 /usr/local/bin/gem
sudo ln -s /usr/bin/ruby1.8 /usr/local/bin/ruby
sudo ln -s /usr/bin/rdoc1.8 /usr/local/bin/rdoc
sudo ln -s /usr/bin/ri1.8 /usr/local/bin/ri
sudo ln -s /usr/bin/irb1.8 /usr/local/bin/irb

