syntax enable

"theme
colorscheme solarized
set background=dark

" editor
set backspace=2
set colorcolumn=100,120
set encoding=utf-8
set history=1000
set hlsearch
set incsearch
set laststatus=2
set number
set ruler
set showcmd

"whitespace
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

"language specific confs.
autocmd Filetype haskell setlocal softtabstop=4 shiftwidth=4 tabstop=8
autocmd Filetype html setlocal softtabstop=4 shiftwidth=4 tabstop=4
autocmd Filetype javascript setlocal softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype python setlocal softtabstop=4 shiftwidth=4 tabstop=4
autocmd Filetype ruby setlocal softtabstop=2 shiftwidth=2 tabstop=2

"hotkeys
map <C-n> :NERDTreeToggle<CR>
map <C-f> :FZF<CR>

"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdTree', {'on': 'NERDTreeToggle'}
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

"g:settings
""vim-plug
let g:plug_timeout=500
""solarized theme
let g:solarized_contrast="high"
let g:solarized_visibility="high"
