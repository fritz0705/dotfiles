LINK := ln -fs

.PHONY: install uninstall

install: uninstall
	$(LINK) $(PWD)/zshenv $(HOME)/.zshenv
	$(LINK) $(PWD)/zshrc $(HOME)/.zshrc
	$(LINK) $(PWD)/mpdconf $(HOME)/.mpdconf
	$(LINK) $(PWD)/vimrc $(HOME)/.vimrc
	$(LINK) $(PWD)/Xdefaults $(HOME)/.Xdefaults
	$(LINK) $(PWD)/xinitrc $(HOME)/.xinitrc
	$(LINK) $(PWD)/i3 $(HOME)/.i3
	$(LINK) $(PWD)/gitconfig $(HOME)/.gitconfig

uninstall:
	rm -f $(HOME)/.zshenv
	rm -f $(HOME)/.zshrc
	rm -f $(HOME)/.mpdconf
	rm -f $(HOME)/.vimrc
	rm -f $(HOME)/.Xdefaults
	rm -f $(HOME)/.xinitrc
	rm -f $(HOME)/.i3
	rm -f $(HOME)/.gitconfig

