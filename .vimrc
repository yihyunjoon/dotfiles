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
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" etc.
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'
colorscheme OceanicNext

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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

