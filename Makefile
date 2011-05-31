all: avatar vim music ssh irc git screen Xdefaults

install-vim:
	cp vim/vimrc ~/.vimrc
	cp -r vim ~/.vim/

vim_clean:
	rm -fr ~/.vim/ ~/.vimrc

ssh:
	mkdir -p ~/.ssh/
	cp -r ssh/* ~/.ssh/

ssh_clean:
	rm -fr ~/.ssh/

install-music:
	mkdir -p ~/.mpd
	cp music/mpdconf ~/.mpd/mpdconf

music_clean:
	rm -fr ~/.mpd/

install-avatar:
	cp avatar/face.jpg ~/.face

clean-avatar:
	rm ~/.face

build-shell:
	rm -f shell/shell.sh
	cat shell/alias.sh >> shell/shell.sh
	cat shell/export.sh >> shell/shell.sh
	cat shell/path.sh >> shell/shell.sh

clean-shell:
	rm ~/.alias ~/.export ~/.function ~/.path

irc:
	cp -r irc/irssi/ ~/.irssi

irc_clean:
	rm -fr ~/.irssi

build-bash: build-shell
	rm -f shell/bash/bashrc
	cat shell/shell.sh >> shell/bash/bashrc
	cat shell/bash/bashrc.bash >> shell/bash/bashrc

install-bash:
	cp shell/bashrc.bash ~/.bashrc

bash_clean:
	rm ~/.bashrc

build-zsh: build-shell
	rm -f shell/zsh/zshrc
	cat shell/shell.sh >> shell/zsh/zshrc
	cat shell/zsh/zshrc.zsh >> shell/zsh/zshrc
	cat shell/zsh/appearance.zsh >> shell/zsh/zshrc
	cat shell/zsh/prompt.zsh >> shell/zsh/zshrc   
	cat shell/zsh/history.zsh >> shell/zsh/zshrc
	cat shell/zsh/git.zsh >> shell/zsh/zshrc
	cat shell/zsh/completion.zsh >> shell/zsh/zshrc
	cat shell/zsh/key-bindings.zsh >> shell/zsh/zshrc
	cat shell/zsh/misc.zsh >> shell/zsh/zshrc

install-zsh:
	cp shell/zsh/zshrc ~/.zshrc

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


