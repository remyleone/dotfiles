.PHONY: clean

avatar=~/.face
ssh_config=~/.ssh/config
irssi_config=~/.irssi/
git_config=~/.gitconfig
screen_config=~/.screenrc
zshrc=~/.zshrc
zsh=~/.zsh
vim=~/.vim
tmux_config=~/.tmux.conf
bin=~/.bin
screen_config=~/.screen.rc

all:
	screen bin avatar irssi git screen tmux vim zsh

clean:
	rm -fr $(avatar) $(ssh_config) $(irssi_config)
	rm -fr $(git_config) $(screen_config)
	rm -fr $(zsh) $(zshrc)
	rm -fr $(vim)
	rm -fr $(bin)

screen:
	ln -s screenrc $(screen_config)

bin:
	ln -s bin $(bin)

avatar:
	ln -s avatar/face.jpg $(avatar)

irssi:
	ln -s -r irc/irssi/ $(irssi_config)

git:
	ln -s git/gitconfig $(git_config)

screen:
	ln -s screenrc $(screen_config)

zsh:
	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

vim:
	curl -Lo- https://bit.ly/janus-bootstrap | bash

tmux:
	ln -s tmux.conf $(tmux_config)
