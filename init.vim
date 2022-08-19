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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

inoremap jk <ESC>
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

colorscheme sublimemonokai
syntax on
set noswapfile

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
set linespace=3
set mouse=a                 " enable mouse click

set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set encoding=utf-8
set guifont=Fura\ Code\ Regular\ Nerd\ Font\ Complete:h12


let mapleader = ","
let SessionLoad = 1
let g:python3_host_prog = 'C:\Users\anton.konev\AppData\Local\Programs\Python\Python38\python38.exe'
let g:python_host_prog = 'C:\Users\anton.konev\AppData\Local\Programs\Python\Python38\python.exe'
" airline options {{{
let g:airline_theme='afterglow'
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
" }}}


autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
filetype plugin on
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
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
let g:pymode_python = 'python3'

" }}}

" COC configuration {{{
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-python',
  \ 'coc-clangd',
  \ ]
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" }}}

autocmd FileType python,python3,py,py3 map <F5> :!python % <CR>
autocmd Filetype r,R map <f5> :!Rscript % <CR>
autocmd FileType CPP,Cpp,cpp map <F5> :!g++ % -o %:r.out<CR>

" Telescope options {{{
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" }}}
