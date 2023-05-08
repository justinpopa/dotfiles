source ~/.config/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme dracula/zsh dracula

antigen apply

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

# Include paths file (if present) containing paths for Go, etc.
if [ -f ~/.paths ]
then
  source ~/.paths
fi

# Nicer prompt.
export PS1=$'\n'"%F{green} %*%F %3~ %F{white}"$'\n'"$ "