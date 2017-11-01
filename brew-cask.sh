#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask

# brew tap caskroom/versions

brew cask install spectacle

brew cask install visual-studio-code

brew tap caskroom/fonts
brew cask install font-source-code-pro-for-powerline
