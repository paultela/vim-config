call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-endwise'

Plug 'scrooloose/nerdtree'
nmap <leader>g :NERDTreeToggle<CR>
nmap <leader>G :NERDTreeFind<CR>

Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'

Plug 'editorconfig/editorconfig-vim'

Plug '2072/PHP-Indenting-for-VIm'    " PHP indent script
Plug 'Yggdroot/indentLine'           " highlighting 4sp indenting
Plug 'chrisbra/Colorizer'            " colorize colors
Plug 'mhinz/vim-signify'             " show VCS changes
Plug 'sheerun/vim-polyglot'          " newer language support
Plug 'w0rp/ale'                      " realtime linting

Plug 'Shougo/deoplete.nvim'          " async completion
Plug 'roxma/nvim-yarp'               " deoplete dependency
Plug 'roxma/vim-hug-neovim-rpc'      " deoplete dependency
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_yarp = 1

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

" default color scheme
set t_Co=256

" Solarized config
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-solarized-dark
hi Normal ctermbg=none
hi NonText ctermbg=none
hi SpecialKey ctermbg=none
hi SpellBad ctermbg=none
" Make start and end tags the same color
hi link xmlEndTag xmlTag

" Default to tabs
set noexpandtab
set copyindent
set preserveindent
set softtabstop=4
set shiftwidth=4
set tabstop=4

" enable line numbers, and don't make them any wider than necessary
set number numberwidth=2

set mouse=a

" pick up external file modifications
set autoread

" don't abandon buffers when unloading
set hidden

" use tab-complete to see a list of possiblities when entering commands
set wildmode=list:longest,full

" allow lots of tabs
set tabpagemax=20

" I like spelling
set spell

" Turn off wrapping by default
set nowrap

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

" clean up trailing whitespace
map <Leader>c :StripTrailingWhitespaces<cr>

" map spacebar to clear search highlight
nnoremap <Leader><space> :noh<cr>

" reindent the entire file
map <Leader>I gg=G``<cr>
