# ZSH configuration

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

unsetopt case_glob
unsetopt correct_all

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

