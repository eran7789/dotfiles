#!/usr/bin/env bash

#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install scm breeze
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc

# installed latest stable node version
nvm install --lts node

# npm globals
npm install -g nodemon
npm install -g react-native-cli
npm install -g eslint