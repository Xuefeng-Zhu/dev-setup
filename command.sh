sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '. "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc

echo '[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh' >> ~/.zshrc

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# install vim config
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
