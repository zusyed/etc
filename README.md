# Setup
## Install Homebrew (http://brew.sh)
 - `$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## (Neo)Vim
### Install vim (optional)
 - `$ sudo brew install vim --with-lua`
 - update the version number of vim in .profile. The line that starts with `alias vim=`

### Neovim (https://github.com/neovim/neovim/wiki/Installing-Neovim)
#### Installation
 - `$ sudo brew install neovim/neovim/neovim`
 - `$ sudo easy_install pip`
 - `$ pip install --user neovim`

#### Configurations
The default config file location for neovim is `~/.config/nvim/init.vim`

Let's create a symlink to continue to use .vimrc file:
 - `$ mkdir ~/.config` 
 - `$ ln -s ~/.vim ~/.config/nvim`
 - `$ ln -s ~/.vimrc ~/.config/nvim/init.vim`

### Install vim-plug (https://github.com/junegunn/vim-plug)
 - `$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
 

### Setup .vimrc
 Let's use the vimrc from this repository
 - `$ git clone git@git.flybits.com:zusyed/etc.git`
 - `$ cp etc/vimrc ~/.vimrc`
 - Launch `vim` and run `:PlugInstall` to install the plugins

## ZSH (http://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default)
 - `$ sudo brew install zsh`
 - `$ sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh`
 - Restart terminal

## Oh My ZSH (https://github.com/robbyrussell/oh-my-zsh)
 - Install Oh My ZSH by running `$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
 - Update `.zshrc` file and choose the `ZSH_THEME` to your liking (I prefer `pygmalion`). Themes can be found at https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 - Add the plugins you wish to use by changing `plugins=(git)` line. Mine looks like `plugins=(git vi-mode)`

### Customizing zsh
 - If you wish to customize your zsh, create a file in the `~/.oh-my-zsh/custom` folder with the `.zsh` extension
 - run `$ cp etc/custom.zsh ~/.oh-my-zsh/custom` if you wish to use mine