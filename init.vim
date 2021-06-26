syntax enable

" theme
" colorscheme solarized
" set background=dark " editor
set backspace=2                 " backspace works like most other apps. move from current line
set colorcolumn=100,120         " draw placeholder for columns.
set encoding=utf-8              " document encoding
set history=1000                " store command history FOREVER
set hlsearch                    " highlight all matches for search pattern
set incsearch                   " search on typing
set laststatus=2                " always open status bar
set number                      " line number
set ruler                       " cursor position
set showcmd                     " show command

" whitespace
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" language specific confs.
autocmd Filetype haskell setlocal softtabstop=4 shiftwidth=4 tabstop=8
autocmd Filetype html setlocal softtabstop=4 shiftwidth=4 tabstop=4
autocmd Filetype javascript setlocal softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype python setlocal softtabstop=4 shiftwidth=4 tabstop=4
autocmd Filetype ruby setlocal softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype yaml setlocal softtabstop=2 shiftwidth=2 tabstop=2

" hotkeys
" map <C-n> :NERDTreeToggle<CR>
" map <C-f> :FZF<CR>

"vim-plug
call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdTree', {'on': 'NERDTreeToggle'}
" Plug 'ervandew/supertab'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
" Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" g:settings
""vim-plug
let g:plug_timeout=500

" solarized theme
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"

"fzf
set rtp+=/usr/local/opt/fzf
