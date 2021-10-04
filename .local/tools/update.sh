#!/bin/zsh

YELLOW='\033[1;33m'
NC='\033[0m'

printf "${YELLOW}Updating macOS and core apps...${NC}\n"
sudo softwareupdate -ia

printf "\n${YELLOW}Updating Homebrew and Mac App Store dependencies...${NC}\n"
brew update
brew bundle --global
brew cleanup
brew doctor

printf "\n${YELLOW}Updating asdf plugins...${NC}\n"
asdf plugin update --all

printf "\n${YELLOW}Updating Node and Yarn...${NC}\n"
asdf install nodejs lts
asdf global nodejs lts

asdf install yarn latest
asdf global yarn latest

asdf current
