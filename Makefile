all: avatar vim music bash shell ssh zsh bash irc git screen Xdefaults

vim:
	cp vim/vimrc ~/.vimrc
	cp -r vim ~/.vim/

ssh:
	cp ssh ~/.ssh

music:
	mkdir ~/.mpd
	cp music/mpdconf .mpd/mpdconf

avatar:
	cp avatar/face.jpg ~/.face

shell:
	cp shell/alias.sh ~/.alias
	cp shell/export.sh ~/.export
	cp shell/function.sh ~/.function
	cp shell/path.sh ~/.path
	cp shell/termsupport.sh ~/.termsupport

irc:
	cp -r irc/irssi/ ~/.irssi

bash:
	cp shell/bashrc ~/.bashrc

zsh:
	mkdir -p ~/.zsh
	cp shell/zsh/zshrc            ~/.zshrc
	cp shell/zsh/appearance.zsh   ~/.zsh/appearance.zsh
	cp shell/zsh/prompt.zsh       ~/.zsh/prompt.zsh
	cp shell/zsh/history.zsh      ~/.zsh/history.zsh
	cp shell/zsh/git.zsh          ~/.zsh/git.zsh
	cp shell/zsh/completion.zsh   ~/.zsh/completion.zsh
	cp shell/zsh/key-bindings.zsh ~/.zsh/key-bindings.zsh
	cp shell/zsh/misc.zsh         ~/.zsh/misc.zsh

git:
	cp git/gitconfig ~/.gitconfig
	cp git/gitmodules ~/.gitmodules

screen:
	cp screenrc ~/.screenrc

Xdefaults:
	cp Xdefaults ~/.Xdefaults
