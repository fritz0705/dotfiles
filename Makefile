.PHONY: install

install:
	ln -frs zshenv $(HOME)/.zshenv
	ln -frs zshrc $(HOME)/.zshrc
	ln -frs mpdconf $(HOME)/.mpdconf
	ln -frs vimrc $(HOME)/.vimrc
	ln -frs Xdefaults $(HOME)/.Xdefaults
	ln -frs xinitrc $(HOME)/.xinitrc
	ln -frs i3 $(HOME)/.i3
	ln -frs gitconfig $(HOME)/.gitconfig

uninstall:
	rm -f $(HOME)/.zshenv
	rm -f $(HOME)/.zshrc
	rm -f $(HOME)/.mpdconf
	rm -f $(HOME)/.vimrc
	rm -f $(HOME)/.Xdefaults
	rm -f $(HOME)/.xinitrc
	rm -f $(HOME)/.i3
	rm -f $(HOME)/.gitconfig

