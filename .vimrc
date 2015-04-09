set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

" Indent Code more easily
Plugin 'michaeljsmith/vim-indent-object'

" Better JS Support
Plugin 'pangloss/vim-javascript'

" Toggle Comments in files
Plugin 'tomtom/tcomment_vim'

" Auto insert end in ruby and others
Plugin 'tpope/vim-endwise'

" Git support
Plugin 'tpope/vim-fugitive'

" HAML, Sass, SCSS
Plugin 'tpope/vim-haml'

" Better . support
Plugin 'tpope/vim-repeat'

" Ruby Support
Plugin 'vim-ruby/vim-ruby'

" Vimscript utility
Plugin 'vim-scripts/L9.git'

" Better % support
Plugin 'vim-scripts/matchit.zip'


" Difficult to explain, but useful
Plugin 'tpope/vim-abolish'

" Airline is pretty cool
Plugin 'bling/vim-airline'

" Tagbar
Plugin 'majutsushi/tagbar'

" Tab completion
Plugin 'ervandew/supertab'

" Golang support
Plugin 'fatih/vim-go'

" Less support
Plugin 'groenewege/vim-less'

" Mustache, handlerbars
Plugin 'mustache/vim-mustache-handlebars'

" Better markdown support
Plugin 'tpope/vim-markdown'

" Project Drawer, open if no files specified
Plugin 'scrooloose/nerdtree'
nmap <leader>g :NERDTreeToggle<CR>
nmap <leader>G :NERDTreeFind<CR>

" Alignment and such
Plugin 'godlygeek/tabular'

" Handy shortcuts
Plugin 'tpope/vim-unimpaired'

" Syntax errors and linters and such
Plugin 'scrooloose/syntastic.git'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Surround things with things
Plugin 'tpope/vim-surround'

" Gitgutter
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_max_signs = 1500

" Highlight tags when inside them
Plugin 'gregsexton/MatchTag.git'

" Better PHP highlighting
Plugin 'StanAngeloff/php.vim'

" Support for Laravel's Blade
Plugin 'xsbeats/vim-blade'

" Marked 2 support
Plugin 'itspriddle/vim-marked.git'

" Hack!
Plugin 'hhvm/vim-hack'

" Ansible formatting
Plugin 'chase/vim-ansible-yaml'

" Editorconfig, because it's probably a good idea
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

syntax enable

" Some sane defualts, adapted from neo/vim-config
" default color scheme
set t_Co=256

set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
hi SpecialKey ctermbg=none

" don't wrap long lines
set nowrap

" show commands as we type them
set showcmd

" highlight matching brackets
set showmatch

" scroll the window when we get near the edge
set scrolloff=4 sidescrolloff=10

" Use tabs to indent, tabs = 4 spaces
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

" enable line numbers, and don't make them any wider than necessary
set number numberwidth=2

" show the first match as search strings are typed
set incsearch

" highlight the search matches
set hlsearch

" searching is case insensitive when all lowercase
set ignorecase smartcase

" assume the /g flag on substitutions to replace all matches in a line
set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

" pick up external file modifications
set autoread

" don't abandon buffers when unloading
set hidden

" match indentation of previous line
set autoindent

" don't blink the cursor
set guicursor=a:blinkon0

" show current line info (current/total)
set ruler rulerformat=%=%l/%L

" show status line
set laststatus=2

" When lines are cropped at the screen bottom, show as much as possible
set display=lastline

" flip the default split directions to sane ones
set splitright
set splitbelow

" don't beep for errors
set visualbell

" make backspace work in insert mode
set backspace=indent,eol,start

" highlight trailing whitespace
set listchars=tab:\ \ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" have the mouse enabled all the time
set mouse=a

" use tab-complete to see a list of possiblities when entering commands
set wildmode=list:longest,full

" allow lots of tabs
set tabpagemax=20

" I like spelling
set spell

" remember last position in file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Thorfile, Rakefile, Vagrantfile, and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" JSON is JS
au BufNewFile,BufRead *.json set ai filetype=javascript

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()

" easy wrap toggling
nmap <Leader>w :set wrap!<cr>
nmap <Leader>W :set nowrap<cr>

" insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" mapping the jumping between splits. Hold control while using vim nav.
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" select the lines which were just pasted
nnoremap vv `[V`]

" clean up trailing whitespace
map <Leader>c :StripTrailingWhitespaces<cr>

" compress excess whitespace on current line
map <Leader>e :s/\v(\S+)\s+/\1 /<cr>:nohl<cr>

" map spacebar to clear search highlight
nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
nnoremap <S-Up> <c-w>+
nnoremap <S-Down> <c-w>-
nnoremap <S-Left> <c-w><
nnoremap <S-Right> <c-w>>

" reindent the entire file
map <Leader>I gg=G``<cr>

" insert the path of currently edited file into a command
" Command mode: Ctrl-P
cmap <C-S-P> <C-R>=expand("%:p:h") . "/" <cr>

" jump to far right or left of line
map L $
map H ^

" PSR-2 Please
autocmd FileType php setlocal shiftwidth=4 tabstop=4 expandtab

let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args = "--standard=PSR2"

