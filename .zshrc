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

railstest() {
	ruby -I test/ $1
}

source /usr/bin/virtualenvwrapper.sh

SAVEHIST=100000

if [ -d ~/.local ]
then
	export PATH=$HOME/.local/bin:$HOME/.local/sbin:$PATH
	export LD_LIBRARY_PATH=$HOME/.local/lib:
fi

if [ -d ~/.texlive2012 ]
then
	export PATH=$HOME/.texlive2012/bin/x86_64-linux:$PATH
fi

if [ -d $HOME/.rbenv ]
then
	export PATH=$HOME/.rbenv/bin:$PATH
	eval "$(rbenv init -)"
fi

export PERL_LOCAL_LIB_ROOT="/home/fritz/perl5";
export PERL_MB_OPT="--install_base /home/fritz/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/fritz/perl5";
export PERL5LIB="/home/fritz/perl5/lib/perl5/x86_64-linux-thread-multi:/home/fritz/perl5/lib/perl5";
export PATH="/home/fritz/perl5/bin:$PATH";
