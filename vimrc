" My .vimrc
"echo ">^.^<"

set number " afficher le numero des lignes
set tabstop=4
set shiftwidth=4
set softtabstop=4
set wrap
set nolist
set nospell
set noswapfile
set autoindent "reproduit l'indentation de la ligne précédente
set incsearch " recherche incrementale pour d'abord chercher puis remplacer
" /motif a chercher
" puis :%s//turc qui remplace/g (si sans le g, ca fait seulement le premier de
" charque ligne)
set smartindent
set numberwidth=2 " espaces pris par les numeros de ligne
syntax enable " coloration syntaxique

" Solarized colors
"set t_Co=16
"set background=dark
"let g:solarized_termcolors=16
"let g:solarized_contrast="high"
"colorscheme solarized

" Leader
let mapleader = ' '

" Exit insert mode
inoremap jk <c-o>:stopinsert<cr>

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
nnoremap <Leader>f :normal gg=G<cr><c-o><c-o>zz

" Open, source .vimrc
nnoremap <leader>ev :tabnew $MYVIMRC.local<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Copy to system clipboard
vmap <Leader>y "+y

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

" Moves
onoremap p i(
onoremap P a(