#!/bin/zsh

YELLOW='\033[1;33m'
NC='\033[0m'

printf "${YELLOW}Updating macOS and core apps...${NC}\n"
# sudo softwareupdate -ia

printf "\n${YELLOW}Updating Homebrew and Mac App Store dependencies...${NC}\n"
brew update
brew upgrade
brew bundle --global

printf "\n${YELLOW}Cleaning up Homebrew...${NC}\n"
brew cleanup --prune=7
brew doctor

printf "\n${YELLOW}Updating Fisher...${NC}\n"
fish -c "fisher update"

printf "\n${YELLOW}Updating asdf plugins...${NC}\n"
asdf plugin update --all

printf "\n${YELLOW}Updating Node...${NC}\n"
asdf install nodejs $(asdf latest nodejs 10)
asdf install nodejs $(asdf latest nodejs 12)
asdf install nodejs $(asdf latest nodejs 14)
asdf install nodejs $(asdf latest nodejs 16)
asdf install nodejs $(asdf latest nodejs 18)

latest_nodejs=$(asdf latest nodejs 16)

printf "\n${YELLOW}Setting global Node version to $latest_nodejs...${NC}\n"
asdf global nodejs $(asdf latest nodejs 16)

printf "\n${YELLOW}Updating npm...${NC}\n"
npm install --global npm@latest

printf "\n${YELLOW}Installing global npm packages...${NC}\n"
npm install --global all-the-package-names@latest vercel@latest

printf "\n${YELLOW}Verifying npm cache...${NC}\n"
npm cache verify

latest_yarn=$(asdf latest yarn)

printf "\n${YELLOW}Updating Yarn...${NC}\n"
asdf install yarn $latest_yarn

printf "\n${YELLOW}Setting global Yarn version to $latest_yarn...${NC}\n"
asdf global yarn $latest_yarn

latest_ruby=$(asdf latest ruby)

printf "\n${YELLOW}Updating Ruby...${NC}\n"
asdf install ruby $latest_ruby

printf "\n${YELLOW}Setting global Ruby version to $latest_ruby...${NC}\n"
asdf global ruby $latest_ruby

printf "\n${YELLOW}Updating asdf shims...${NC}\n"
asdf reshim

printf "\n${YELLOW}Done!${NC}\n\n"
neofetch
