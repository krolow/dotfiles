"Leader
let mapleader = ','
let g:mapleader = ','

"buffer map
nnoremap <leader>bn :bnext<CR> " switch to next buffer
nnoremap <leader>bc :bp\|:bd #<CR> " close current buffer
nnoremap <leader>bp :bprevious<CR> " switch to previous buffer

"ag search
nnoremap \ :Ag<SPACE>
