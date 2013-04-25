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

clean:
	rm -fr $(avatar) $(ssh_config) $(irssi_config)
	rm -fr $(git_config) $(screen_config)
	rm -fr $(zsh) $(zshrc)
	rm -fr $(vim)
	rm -fr $(bin)

avatar:
	ln -s avatar/face.jpg $(avatar)

bin:
	ln -s bin $(bin)

git:
	cp -f gitconfig $(git_config)

irssi:
	cp -fr irc/irssi/ $(irssi_config)

screen:
	cp -f screenrc $(screen_config)

tmux:
	ln -s tmux.conf $(tmux_config)

vim:
	curl http://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

zsh:
	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
