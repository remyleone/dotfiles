all: avatar vim music bash shell ssh zsh bash irc git screen Xdefaults

vim:
	cp vim/vimrc ~/.vimrc
	cp -r vim ~/.vim/

vim_clean:
	rm -fr ~/.vim/ ~/.vimrc

ssh:
	mkdir -p ~/.ssh/
	cp -r ssh/* ~/.ssh/

ssh_clean:
	rm -fr ~/.ssh/

music:
	mkdir -p ~/.mpd
	cp music/mpdconf ~/.mpd/mpdconf

music_clean:
	rm -fr ~/.mpd/

avatar:
	cp avatar/face.jpg ~/.face

avatar_clean:
	rm ~/.face

shell:
	cp shell/alias.sh ~/.alias
	cp shell/export.sh ~/.export
	cp shell/function.sh ~/.function
	cp shell/path.sh ~/.path

shell_clean:
	rm ~/.alias ~/.export ~/.function ~/.path

irc:
	cp -r irc/irssi/ ~/.irssi

irc_clean:
	rm -fr ~/.irssi

bash:
	cp shell/bashrc.bash ~/.bashrc

bash_clean:
	rm ~/.bashrc

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

zsh_clean:
	rm -fr ~/.zsh/ .zshrc

git:
	cp git/gitconfig ~/.gitconfig
	cp git/gitmodules ~/.gitmodules

git_clean:
	rm ~/.gitconfig ~/.gitmodules

screen:
	cp screenrc ~/.screenrc

screen_clean:
	rm ~/.screerc

Xdefaults:
	cp Xdefaults ~/.Xdefaults

Xdefaults_clean:
	rm ~/.Xdefaults


