# environment variables
export PATH=$PATH:$HOME/bin
# MACHENV is used by flybits GoLang projects
export MACHENV=LOCAL
# set preferred editor to neovim
export EDITOR='nvim'

# aliases
# cls to clear window
alias cls='clear'
# use nvim instead of vim
alias vim='nvim'

# lock the mac with 'lock'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# run gofl script in current shell as opposed to a subshell
alias gofl='. gofl'

# run prepare
alias prep='$GOPATH/bin/prepare -scripts-path ~/bin -scenario scenario-01 -wdir=$(pwd) -v=5 -logtostderr'

# remove all docker process
alias drmfa='docker rm -f $(docker ps -aq) && docker rmi -f $(docker images -aq)'

# run mongo shell in docker
# alias mongo="docker run -it --link mongodb:mongo --rm --name mongo mongo sh -c \'exec mongo \"$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test\"\'"

# setup GoLang gvm-style
[[ -s "/Users/syed/.gvm/scripts/gvm" ]] && source "/Users/syed/.gvm/scripts/gvm"

# autocomplete gofl with files from the "$GOPATH/src/flybits" folder
# Make sure to run this after the $GOPATH environment variable is set
compdef "_files -W $GOPATH/src/flybits" gofl

# set the the color of the arrow to red (this only works on pygmalion theme)
function command-mode {
  post_prompt='%{$fg[red]%}⇒%{$reset_color%}  '
   prompt_pygmalion_precmd
}

# set the the color of the arrow to cyan (this only works on pygmalion theme)
function insert-mode {
  post_prompt='%{$fg[cyan]%}⇒%{$reset_color%}  '
  prompt_pygmalion_precmd
}

# don't do anything 
function zle-line-finish
{
}

function gorun () {
    wd=$(pwd) 
    name=$(basename "$wd") 
    MACHENV=LOCAL && go build && "./$name" -logtostderr -v=5
}
