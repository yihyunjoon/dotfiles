" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Appearance
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Code format
Plug 'prettier/vim-prettier'
Plug 'editorconfig/editorconfig-vim'

" Language supports
Plug 'cespare/vim-toml'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-rust-analyzer',
  \ ]

" etc.
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'
colorscheme OceanicNext

set updatetime=100
set signcolumn=yes

" Show line numbers
set number

" Save command history
set history=1000

" Show invisibles
set list
set listchars=tab:→\ ,space:·
highlight NonText guifg=#2d3b43

" Hightlight over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set splitright

" Enable mouse
set mouse=a

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Key mapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

