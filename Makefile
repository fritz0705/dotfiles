.PHONY: install uninstall

install: uninstall
	ln -nfrs zshenv $(HOME)/.zshenv
	ln -nfrs zshrc $(HOME)/.zshrc
	ln -nfrs mpdconf $(HOME)/.mpdconf
	ln -nfrs vimrc $(HOME)/.vimrc
	ln -nfrs Xdefaults $(HOME)/.Xdefaults
	ln -nfrs xinitrc $(HOME)/.xinitrc
	ln -nfrs i3 $(HOME)/.i3
	ln -nfrs gitconfig $(HOME)/.gitconfig

uninstall:
	rm -f $(HOME)/.zshenv
	rm -f $(HOME)/.zshrc
	rm -f $(HOME)/.mpdconf
	rm -f $(HOME)/.vimrc
	rm -f $(HOME)/.Xdefaults
	rm -f $(HOME)/.xinitrc
	rm -f $(HOME)/.i3
	rm -f $(HOME)/.gitconfig

