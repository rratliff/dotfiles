autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:*' enable git

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%F{green}%n@%m %F{blue}%~%f${vcs_info_msg_0_} %# '

export PATH=$PATH:/opt/homebrew/bin

alias gs='git status'

ssh-add --apple-load-keychain -q
