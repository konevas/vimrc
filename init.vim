call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'danilo-augusto/vim-afterglow'
Plug 'vim-airline/vim-airline'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'ncm2/ncm2'  " awesome autocomplete plugin
Plug 'ncm2/ncm2-bufword'  " buffer keyword completion
Plug 'Shougo/deoplete.nvim' "Async autocompletion
Plug 'davidhalter/jedi-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tell-k/vim-autopep8'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Valloric/YouCompleteMe'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'puremourning/vimspector'
Plug 'tpope/vim-obsession'
call plug#end()

inoremap jk <ESC>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

colorscheme sublimemonokai
syntax on
set noswapfile

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set smartcase
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
set linespace=3
set mouse=a                 " enable mouse click

set ttyfast                 " Speed up scrolling in Vim
set encoding=utf-8
set guifont=FiraCode\ Nerd\ Font\ Mono:h12

set guioptions=
set showtabline=0
set number    
set cursorline
set clipboard=unnamed


let mapleader = ","
let SessionLoad = 1
let g:python3_host_prog = 'C:\Users\anton.konev\AppData\Local\Programs\Python\Python38\python38.exe'
let g:python_host_prog = 'C:\Users\anton.konev\AppData\Local\Programs\Python\Python38\python.exe'
" airline options {{{
let g:airline_theme='afterglow'
let g:airline_powerline_fonts = 1 "???????????????? ?????????????????? Powerline ??????????????
let g:airline#extensions#keymap#enabled = 0 "???? ???????????????????? ?????????????? ??????????????
let g:airline_section_z = "\ue0a1:%l/%L Col:%c %{ObsessionStatus()}" "?????????????????? ?????????? ?????????????????? ??????????????
let g:Powerline_symbols='unicode' "?????????????????? unicode
let g:airline#extensions#xkblayout#enabled = 0 "?????? ?????? ?????????? ????????????????
" }}}


filetype plugin on
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
nmap <leader>nt :NERDTree<cr>

" jedi options {{{ 
let g:jedi#auto_initialization = 0
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#show_call_signatures_delay = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#show_call_signatures_modes = 'i'  " ni = also in normal mode
let g:jedi#enable_speed_debugging=0
let g:jedi#force_py_version = 3
let g:jedi#completions_enabled = 0
let g:pymode_python = 'python3'

autocmd FileType python,python3,py,py3 map <F9> :!python % <CR>
autocmd Filetype r,R map <f9> :!Rscript % <CR>
autocmd FileType CPP,Cpp,cpp map <F9> :!g++ % -o %:r.out<CR>

" Telescope options {{{
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" }}}
