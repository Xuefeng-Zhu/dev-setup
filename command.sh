sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '. "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts