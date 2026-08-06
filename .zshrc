autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:*' enable git

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%F{green}%n@%m %F{blue}%~%f${vcs_info_msg_0_} %# '

export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:$(brew --prefix python@3.13)/libexec/bin
export PATH="$PATH:/Users/Robert/Library/Python/3.9/bin"

alias gs='git status'
alias gc='git commit'
alias gpo='git push'
alias gd='git diff'
alias gb='git branch'
alias gg='git grep'

ssh-add --apple-load-keychain -q

export CLICOLOR=1

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/Robert/.lmstudio/bin"
# End of LM Studio CLI section

# Add bin to the path
export PATH="$PATH:$HOME/.local/bin:$HOME/bin"
export PATH="$PATH:~/dotfiles/bin"

# Deno is a successor to NodeJS
. "/Users/Robert/.deno/env"

alias javas_avail='/usr/libexec/java_home -V'
