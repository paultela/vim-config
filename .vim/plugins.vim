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

" Well we're at it, JXS too
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

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
let g:airline#extensions#tabline#enabled = 1
Plugin 'vim-airline/vim-airline-themes'

" Tagbar
Plugin 'majutsushi/tagbar'

" Tab completion
Plugin 'ervandew/supertab'

" ctrlp searching
Plugin 'kien/ctrlp.vim'

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

" Support for Laravel's Blade
Plugin 'xsbeats/vim-blade'

" Better PHP syntax
Plugin 'StanAngeloff/php.vim'

" phpfmt support
Plugin 'dericofilho/vim-phpfmt'
let g:phpfmt_psr2 = 1
let g:phpfmt_on_save = 0

" Marked 2 support
Plugin 'itspriddle/vim-marked.git'

" Ansible formatting
Plugin 'chase/vim-ansible-yaml'

" Editorconfig, because it's probably a good idea
Plugin 'editorconfig/editorconfig-vim'

" Debugging from inside vim
Plugin 'joonty/vdebug.git'

" AutoDetect buffer settings
Plugin 'ciaranm/detectindent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
