#!/bin/bash
# update
function update_fresh {
	sudo apt-get -y update
}

# change this link to wherever your pkgs are
function jekyll_install {
sudo apt-get -y install ruby ruby-dev build-essential git
}

function fresh_jekyll {
update_fresh
jekyll_install
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
}

fresh_jekyll
gem install jekyll bundler
