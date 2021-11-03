#!/bin/zsh

YELLOW='\033[1;33m'
NC='\033[0m'

printf "${YELLOW}Updating macOS and core apps...${NC}\n"
sudo softwareupdate -ia

printf "\n${YELLOW}Updating Homebrew and Mac App Store dependencies...${NC}\n"
brew update
brew upgrade
brew bundle --global

printf "\n${YELLOW}Cleaning up Homebrew...${NC}\n"
brew cleanup
brew doctor

printf "\n${YELLOW}Updating asdf plugins...${NC}\n"
asdf plugin update --all

printf "\n${YELLOW}Updating Node and Yarn...${NC}\n"
asdf install nodejs $(asdf latest nodejs 14)
asdf global nodejs $(asdf latest nodejs 14)

asdf install yarn $(asdf latest yarn)
asdf global yarn $(asdf latest yarn)

asdf current
