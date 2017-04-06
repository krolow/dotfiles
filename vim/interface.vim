" themes
" let base16colorspace=256
" let g:onedark_termcolors=256
" set t_Co=256
colorscheme onedark
let g:onedark_termcolors=16

" interface settings
set number
set wrap
set wrapmargin=8
set linebreak

set title
set autoindent
set smartindent
set colorcolumn=80,100


" searching
set ignorecase
set smartcase

" syntax
syntax on

"airline
set noshowmode
let g:airline#extensions#tabline#enabled = 1
set hidden

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1


set mouse=nicr
set ttymouse=xterm2
