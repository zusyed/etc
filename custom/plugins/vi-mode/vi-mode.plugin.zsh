# Updates editor information when the keymap changes.
function zle-keymap-select zle-line-init {
  case $KEYMAP in
      vicmd)      command-mode;;
      viins|main) insert-mode;;
  esac

  zle reset-prompt
  zle -R
}

# sets the cursor to a block cursor
function zle-line-finish
{
    print -n -- "\E]50;CursorShape=0\C-G"
}

# Ensure that the prompt is redrawn when the terminal size changes.
TRAPWINCH() {
  zle &&  zle -R
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
zle -N edit-command-line


bindkey -v

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line

# allow ctrl-p, ctrl-n for navigate history (standard behaviour)
bindkey '^P' up-history
bindkey '^N' down-history

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# allow ctrl-r to perform backward search in history
bindkey '^r' history-incremental-search-backward

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line


# sets the cursor to a block cursor
function command-mode {
  print -n -- "\E]50;CursorShape=0\C-G"
}

# sets the cursor to a line cursor
function insert-mode {
   print -n -- "\E]50;CursorShape=1\C-G"
}
