ZSH=$HOME/.oh-my-zsh
ZSH_THEME="eeadc"
DISABLE_AUTO_UPDATE="true"
plugins=(git archlinux)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

export MPD_HOST=$HOME/.mpd/socket

alias ip='sudo ip'
alias openvpn='sudo openvpn'
alias dhcpcd='sudo dhcpcd'

activate() {
	source $HOME/envs/$1/bin/activate
}

source /usr/bin/virtualenvwrapper.sh
