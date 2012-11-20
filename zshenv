export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"

if [ -f /usr/bin/virtualenvwrapper.sh ]
then
	source /usr/bin/virtualenvwrapper.sh
fi

if [ -d ~/.mpd ]
then
	export MPD_HOST=$HOME/.mpd/socket
fi

if [ -d ~/.local ]
then
	export PATH=$HOME/.local/bin:$HOME/.local/sbin:$PATH
	export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
fi

if [ -d ~/.texlive2012 ]
then
	export PATH=$HOME/.texlive2012/bin/$(uname -m)-linux:$PATH
fi

if [ -d ~/.rbenv ]
then
	export PATH=$HOME/.rbenv/bin:$PATH
	eval "$(rbenv init -)"
fi

if [ -z "$SSH_AGENT_PID" ]
then
	eval `ssh-agent`

	zshexit() {
		ssh-agent -k
	}
fi

