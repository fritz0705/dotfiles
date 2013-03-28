export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"

if [ -d ~/.mpd ]
then
	export MPD_HOST=$HOME/.mpd/socket
fi

if [ -d ~/.local ]
then
	export PATH=$HOME/.local/bin:$HOME/.local/sbin:$PATH
	export LD_LIBRARY_PATH=$HOME/.local/lib
fi

if [ -d ~/.rbenv ]
then
	export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
fi

if [ -d ~/.texlive2012 ]
then
	export PATH=$HOME/.texlive2012/bin/$(uname -m)-linux:$PATH
fi

function _stat_file_uid {
	if [ $(uname) = "FreeBSD" ]
	then
		command stat -f "%u" $1
	else
		command stat $1 -c "%u"
	fi
}

if [ -z "$SSH_AGENT_PID" -a -z "$SSH_CONNECTION" -a $(id -u) = $(_stat_file_uid $HOME) ]
then
	eval `ssh-agent`

	function exit_ssh_agent {
		eval `ssh-agent -k`
	}

	function ssh_agent_kill_hint {
		[ -n "$SSH_AGENT_PID" -a $(echo $3 | cut -d' ' -f1) = "exec" ] && export SSH_AGENT_KILL=${SSH_AGENT_PID}
	}

	autoload -Uz add-zsh-hook
	add-zsh-hook preexec ssh_agent_kill_hint
	add-zsh-hook zshexit exit_ssh_agent
fi

if [ -d ~/android ]
then
	export PATH=$HOME/android/sdk/tools:$HOME/android/sdk/platform-tools:$PATH
fi

