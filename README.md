# Install Vundle
- run git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

# Install other plugins
- open vim
- type :BundleInstall

# Install powerline fonts (I only tried this on Ubuntu)
- git clone https://github.com/Lokaltog/powerline-fonts
- mkdir ~/.fonts
- cp powerline-fonts/UbuntuMono/Ubuntu* ~/.fonts
- fc-cache -vf ~/.fonts
- gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono derivative Powerline Bold Italic 12'
