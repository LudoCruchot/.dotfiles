# up to you (me) if you want to run this as a file or copy paste at your leisure

#install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

sudo chown -R $USER:admin /usr/local

echo "------------------------------"
echo "Installing Git and bash completion."
#install git
brew install git

#bash completion
brew install bash-completion

echo "------------------------------"
echo "Installing Xcode Command Line Tools."
xcode-select --install

echo "------------------------------"
echo "Installing Java, NPM, RBENV, ruby"
#install languages
brew cask install java
brew install node
npm install -g coffee-script
#npm install -g grunt-cli
npm install -g jshint
npm install -g less
gem install jekyll

brew install heroku/brew/heroku


echo "------------------------------"
echo "Installing Daveloper apps : hyper term, atom..."
brew cask install hyper
hyper i hyper-electron-highlighter
brew cask install --appdir="/Applications" atom
# install sublime 3
# and package control :
# https://packagecontrol.io/installation#st3

# Package controle installé :
# monokai extended
# Sublime Linter3
# markdown extended
# api blueprint


echo "------------------------------"
echo "Installing Misc apps: chrome, firefox, slack, evernote..."
# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" evernote


echo "------------------------------"
echo "Installing database/datastore: postgresql, mongoDB, Redis"
#brew install mysql
brew install postgresql
brew install mongo
brew install redis
#brew install elasticsearch


#image optim
brew install imagemagick
brew install advancecomp gifsicle jhead jpegoptim jpeg optipng pngcrush pngquant

# API blueprint
# #https://github.com/apiaryio/api-blueprint-sublime-plugin
# Drafter command line tool
brew install --HEAD \
  https://raw.github.com/apiaryio/drafter/master/tools/homebrew/drafter.rb

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
#sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
#npm install -g nave

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# https://github.com/rupa/z
# z, oh how i love you
#mkdir -p ~/code/z
#curl https://raw.github.com/rupa/z/master/z.sh > ~/code/z/z.sh
#chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)


# add this to the bash_profile file if it aint there.
#   . ~/code/z/z.sh


# Remove outdated versions from the cellar.
brew cleanup
