filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'comments.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'taglist.vim'
Bundle 'grep.vim'
Bundle 'groenewege/vim-less'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'rubycomplete.vim'
Bundle 'avakhov/vim-yaml'
Bundle 'tpope/vim-rails'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'valgrind.vim'

filetype plugin indent on     " required!


colo twilight
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set expandtab ts=2 sw=2 ai
set number
set noswapfile
set incsearch
set hlsearch



:map <C-e> <ESC>:q!<cr>

:nnoremap <A-j> :m+<CR>==
:nnoremap <A-k> :m-2<CR>==
:inoremap <A-j> <Esc>:m+<CR>==gi
:inoremap <A-k> <Esc>:m-2<CR>==gi
:vnoremap <A-j> :m'>+<CR>gv=gv
:vnoremap <A-k> :m-2<CR>gv=gv

:imap <C-s> <ESC>:w<cr>

:map <C-s> :w<cr>
:map tt :tabnew<CR>:NERDTreeToggle<CR>
:map <C-Del> :tabclose<cr>

" Rails
:map gv :Rview<cr>
:map gc :Rcontroller<cr>
:map gm :Rmodel<cr>


:map <F8> :make && ./main<cr>
:map val :Valgrind ./a.out<cr>
:map gdb :!gdb ./a.out<cr>


" Rgrep
map <C-f> :Rgrep<cr>
let Grep_Default_Filelist = '*.*'
let Grep_Skip_Files = '*.log *.sql *.png *.jpg *.jpeg *.gif'
let Grep_Skip_Dirs = 'tmp system coverage log solr public'



let g:netrw_altv=1
let g:netrw_winsize=180

:map <F2> :NERDTreeToggle<cr>
:map gt :NERDTreeFind<cr>

" to start vim maximized
function Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

au GUIEnter * call Maximize_Window()"
