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
alias autocommit='git commit -m "$(curl http://whatthecommit.com/index.txt)"'

activate() {
	source $HOME/envs/$1/bin/activate
}

source /usr/bin/virtualenvwrapper.sh

SAVEHIST=100000

if [ -d $HOME/.rbenv ]
then
	export PATH=$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH
fi
