

#!/usr/bin/env bash

# update
function update_fresh {
	sudo apt-get -y update
}

# change this link to wherever your pkgs are
function jekyll_install {
	software=($(curl -sSL https://raw.githubusercontent.com/mkwilbux/Tools/blob/master/jekyll-script/jekyll_pkgs)

for package in ${software[*]}
do
	sudo apt-get -y install $package

done
}

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc

echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc

echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc

source ~/.bashrc

function fresh_jekyll {
update_fresh
jekyll_install
}

fresh_jekyll


####
#Step 1
#Install git
#Install Ruby
#Install build-essentials
#
#
#Step 2
#Install directory for user account
#
#export -> bashrc
#source bashrc
#
#Step 3
#
#(reminder source bashrc)
#Then, gem install jekyll bundler
#
#Step 4 
#chmod +x
#./build-docs.sh
#
#Generates the files. 
#Done.
####


