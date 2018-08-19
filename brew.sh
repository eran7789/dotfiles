#!/usr/bin/env bash

brew update
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install other useful binaries.
brew install ack
brew install git
brew install p7zip
brew install pigz
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install autojump
brew install thefuck
brew install node
brew install watchman
brew install z

# Install Cask
brew tap caskroom/cask

brew cask install google-chrome
brew cask install iterm2
brew cask install webstorm
brew cask install the-unarchiver
brew cask install spectacle
brew cask install alfred
brew cask install teamviewer
brew cask install firefox
brew cask install 1password
brew cask install jetbrains-toolbox
brew cask install adobe-creative-cloud
brew cask install docker
brew cask install slack
brew cask install zeplin
brew cask install spotify
brew cask install whatsapp

brew cleanup
brew cask cleanup
