""""""""""""""""""""""""""""""""""""""
" Fichier Vim de Remy 'Sieben' Leone
""""""""""""""""""""""""""""""""""""""

" Recherche pour déterminer le type d'un fichier (nom du fichier et d'autres
" trucs)

" Vous pouvez avoir une aide pour chaque option en tapant dans la ligne de commande de 
" vim :help suivi de l'option qui vous intéresse

filetype on


set ignorecase " Ignorer la casse
set showmatch " Voir les couples de parenthèses

" <tab> -> 4 <space>

set t_Co=256 "Nombre de couleurs 
set nocompatible " Choix pour vim like or vi like
set expandtab " Pour mettre des spaces à la place d'une tabulation il faut faire Ctrl-v<Tab>
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noerrorbells
set showcmd " Faire apparaitre les commandes dans la dernière ligne
set autoindent "Autoindentation 
set smartindent
set fileformat=unix
set ruler "Info sur position
set fdm=marker "Folding
set laststatus=2
set noautoread "Evite de mettre à jour le fichier au cas ou un autre editeur l'a modifié
set spell " Spell checking
setlocal spell spelllang=fr
set suffixes+=.class,.gz,.zip,.bz2,.tar,.pyc
set suffixes-=.h
set wildmenu " Permet d'afficher les options disponibles (Completion)
syn on
syntax on
set ttyfast 
set background=dark 
set incsearch
set icon
set splitbelow
set splitright
set number
set novisualbell
set wildignore+=*.o,*.r,*.class,*.pyc,*.so,*.sl,*.tar,*.tgz,*.gz,*.dmg,*.zip,*.pdf,*CVS/*,*.svn/*,*.git/*,*.toc,*.aux,*.dvi,*.log
set wildmode=full
filetype indent on
filetype plugin on


" Show tabs and trailing whitespace visually
if (&termencoding == "utf-8") || has("gui_running")
    if has("gui_running")
       set list listchars=tab:»·,trail:·,extends:…,nbsp:‗
    else
        set list listchars=tab:»·,trail:·,extends:>,nbsp:_
    endif
    else
        set list listchars=tab:>-,trail:.,extends:>,nbsp:_
endif


" Dictionnaire 

if has('unix')
set dictionary=/usr/share/dict/french
endif


" Meilleure indentation en Python

filetype plugin indent on

" Fonction pour convertir les tabs en espace et mettre les fins 
" de ligne au format UNIX

fun CleanText()
	let curcol = col(".")
	let curline = line(".")
	exe ":retab"
	$//ge"xe ":%s/
	/ /ge"xe ":%s/
	exe ":%s/ \\+$//e"
call cursor(curline, curcol)
	endfun

	" CleanText est sur F6

	map <F6> :call CleanText()<CR>

	" Executer le script Python 

	map <silent> <F4> "<Esc>:w!<cr>:!python %<cr>"
