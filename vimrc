" My .vimrc
"echo ">^.^<"

" PLUGINS
source ~/.vimrc.plugins

set number " afficher le numero des lignes
set tabstop=4
set shiftwidth=4
set softtabstop=4
set wrap
set nolist
set nospell
set noswapfile
set autoindent "reproduit l'indentation de la ligne précédente
set hlsearch " highlight search results
set incsearch " recherche incrementale pour d'abord chercher puis remplacer
" /motif a chercher
" puis :%s//turc qui remplace/g (si sans le g, ca fait seulement le premier de
" charque ligne)
set numberwidth=2 " espaces pris par les numeros de ligne
set hidden " buffer switching without saving
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor

syntax enable " coloration syntaxique
set background=dark
colorscheme solarized

" open file at the same line that it was closed for the last time
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Leaders
let mapleader = ' '
let maplocalleader = 'ù'

" Exit insert mode
inoremap jk <c-o>:stopinsert<cr>

noremap j gj
noremap k gk

" ; at the end of the line
nnoremap <Leader>; A;<Esc>

" Matching ( or ] ...
nnoremap à %

" Last edited line
nnoremap <leader>_ '.
" Last edited location
nnoremap <leader>ç `.

" Remove search highlighting
nnoremap <Leader>* :noh<cr>

" Sudo write
nnoremap <Leader>sus :w !sudo tee %<cr>

" Swap lines
noremap <leader>k yyddkP
noremap <leader>j yyddjP

" Indent file
nnoremap <Leader>f :normal gg=G''<cr>zz

" Open, source .vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Yank to the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap <Leader>y "+y

" Save
nnoremap <leader>s :w<cr>
nnoremap <leader>sa :wa<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>sq :x<cr>

" Folds
nnoremap <backspace> za
vnoremap <backspace> zf

" Tabs
nnoremap <leader>tb :tabnew<cr>
nnoremap <leader>p :tabn<cr>
nnoremap <leader>o :tabp<cr>
nnoremap <S-H> gT
nnoremap <S-L> gt

" Moves
onoremap p i(
onoremap P a(

" Bash and Nodejs file detection
fun! s:DetectShebang()
	if getline(1) == '#!/bin/bash'
		set ft=sh
	endif
	if getline(1) == '#!/usr/bin/env node'
		set ft=javascript
	endif
endfun

autocmd BufNewFile,BufRead * call s:DetectShebang()

" Load plugin config
source ~/.vimrc.plugins.config
