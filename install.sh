#!/bin/zsh

mv zsh/zshrc ~/.oh-my-zsh/zshrc
mv ~/.zshrc ~/.zshrc_old
ln -s ~/.oh-my-zsh/zshrc ~/.zshrc
mv zsh/zoe-fino-time.zsh-theme ~/.oh-my-zsh/themes
rm -rf zsh
exec zsh -l