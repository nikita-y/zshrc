autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' stagedstr '*' 
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '  %F{13}%b%f%c%u'

setopt PROMPT_SUBST
PROMPT='%F{14}%n%f at %F{2}%m%f in %F{12}%~%f${vcs_info_msg_0_}
%F{2}%B->%b%f '

#Rust
export PATH="$HOME/.cargo/bin:$PATH"

#Brew
export PATH="/usr/local/sbin:$PATH"

alias       ls='ls -G'
alias       ll='ls -lhAG'
alias     grep='grep --color=auto'
alias     tree='tree -C'
alias       sz='du -sch .[!.]* * | sort -h'
alias      ssh='ssh -xC'
alias      vim='nvim'
alias       ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias     diff='icdiff'
alias     ping='ping -c4'
