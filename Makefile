LINK := ln -fs

WITH_ZSH     = yes
WITH_MPD     = yes
WITH_VIM     = yes
WITH_X11     = yes
WITH_GIT     = yes

-include Make.local

.PHONY: install uninstall

install: uninstall
ifeq ($(WITH_ZSH),yes)
	$(LINK) $(PWD)/zshenv $(HOME)/.zshenv
	$(LINK) $(PWD)/zshrc $(HOME)/.zshrc
endif
ifeq ($(WITH_MPD),yes)
	$(LINK) $(PWD)/mpdconf $(HOME)/.mpdconf
endif
ifeq ($(WITH_VIM),yes)
	$(LINK) $(PWD)/vimrc $(HOME)/.vimrc
endif
ifeq ($(WITH_X11),yes)
	$(LINK) $(PWD)/Xdefaults $(HOME)/.Xdefaults
	$(LINK) $(PWD)/xinitrc $(HOME)/.xinitrc
	$(LINK) $(PWD)/i3 $(HOME)/.i3
	mkfifo $(HOME)/.i3/bar
endif
ifeq ($(WITH_GIT),yes)
	$(LINK) $(PWD)/gitconfig $(HOME)/.gitconfig
endif

uninstall:
	$(RM) $(HOME)/.zshenv
	$(RM) $(HOME)/.zshrc
	$(RM) $(HOME)/.mpdconf
	$(RM) $(HOME)/.vimrc
	$(RM) $(HOME)/.Xdefaults
	$(RM) $(HOME)/.xinitrc
	$(RM) $(HOME)/.i3/bar
	$(RM) $(HOME)/.i3
	$(RM) $(HOME)/.gitconfig

