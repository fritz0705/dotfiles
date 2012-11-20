# ZSH configuration

autoload -Uz colors && colors

zmodload zsh/attr
zmodload zsh/stat

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -Uz compinit && compinit -i

setopt auto_resume
setopt notify

setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home
setopt extended_glob

setopt extended_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_save_no_dups

setopt complete_in_word
setopt always_to_end
setopt auto_menu
setopt auto_list
setopt auto_param_slash

setopt prompt_subst

unsetopt case_glob
unsetopt correct_all

# Group matches and descriptions
zstyle ':completion:*:*:*:*:*'                 menu select
zstyle ':completion:*:matches'                 group 'yes'
zstyle ':completion:*:options'                 description 'yes'
zstyle ':completion:*:options'                 auto-description '%d'
zstyle ':completion:*'                         verbose yes

# History
zstyle ':completion:*:history-words'           stop yes
zstyle ':completion:*:history-words'           remove-all-dups yes
zstyle ':completion:*:history-words'           list false
zstyle ':completion:*:history-words'           menu yes

# Directories
zstyle ':completion:*:*:cd:*'                  tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:directory-stack'  menu yes select
zstyle ':completion:*'                         squeeze-slashes true

# Kill
zstyle ':completion:*:*:kill:*'                menu yes select
zstyle ':completion:*:*:kill:*'                force-list always
zstyle ':completion:*:*:kill:*'                insert-ids single

# Man
zstyle ':completion:*:manuals'                 separate-sections true
zstyle ':completion:*:manuals.(^1*)'           insert-sections true

# Caching
zstyle ':completion::complete:*'               use-cache on
zstyle ':completion::complete:*'               cache-path "${HOME}/.zcompcache"

bindkey -e

bindkey '^r' history-incremental-search-backward
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[OF" end-of-line

alias dhcpcd='sudo dhcpcd'
alias halt='sudo halt'
alias ip='sudo ip'
alias iptables='sudo iptables'
alias modprobe='sudo modprobe'
alias mount='sudo mount'
alias nmap='sudo nmap'
alias openvpn='sudo openvpn'
alias packer='sudo packer'
alias pacman='sudo pacman'
alias rc.d='sudo rc.d'
alias reboot='sudo reboot'
alias rfkill='sudo rfkill'
alias tcpdump='sudo tcpdump'
alias umount='sudo umount'

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

function current_branch() {
	local branch="$(git symbolic-ref --short HEAD)"
	if [[ -n "$branch" ]]
	then
		print $branch
		return 0
	else
		return 1
	fi
}

PROMPT='%{$fg[green]%}%n@%m %{$fg_bold[yellow]%}%~ %{$reset_color%}%(!.#.$) '

