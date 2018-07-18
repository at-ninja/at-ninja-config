#!/bin/sh

# Script to download and install my toolset

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

#Programming Languages
brew install node
brew install elm
brew install pyenv

#Dev Tools
brew install git
brew install wget
brew install zsh
brew install zsh-completions
brew install openssl
brew install mysql
brew install cowsay
brew install fortune
brew install hub
brew install thefuck
brew install yarn

#Dev Apps
brew cask install hyper
brew cask install visual-studio-code
brew cask install macdown

#Web Tools
brew cask install google-chrome
brew cask install firefox

#Monoid
brew tap homebrew/cask-fonts
brew cask install font-monoid

#Brew tools are installed. configure them

#npm globals
npm i -g ionic
npm i -g create-react-app
npm i -g eclint
npm i -g foreman
npm i -g sass

#zsh config
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/chattahippie/chattahippie-config/master/.zshrc > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/chattahippie/chattahippie-config/master/agnoster-athomas.zsh-theme > ~/.oh-my-zsh/custom/themes/agnoster-athomas.zsh-theme
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s /bin/zsh

#VSCode config
curl -fsSL https://raw.githubusercontent.com/chattahippie/chattahippie-config/master/vscode-settings.json > ~/Library/Application\ Support/Code/User/settings.json
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension EditorConfig.EditorConfig
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension HookyQR.beautify
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension PKief.material-icon-theme
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dbaeumer.vscode-eslint
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension eamodio.gitlens
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension felipe.nasc-touchbar
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-python.python
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension msjsdiag.debugger-for-chrome
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension esbenp.prettier-vscode
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension nobuhito.printcode
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vsmobile.vscode-react-native

#Hyper config
curl -fsSL https://raw.githubusercontent.com/chattahippie/chattahippie-config/master/.hyper.js -o ~/.hyper.js

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
sh fonts/install.sh
rm -rf fonts 