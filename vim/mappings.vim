"Leader
let mapleader = ','
let g:mapleader = ','

"buffer map
nnoremap <leader>bn :bnext<CR> " switch to next buffer
nnoremap <leader>bc :bp\|:bd #<CR> " close current buffer
nnoremap <leader>bp :bprevious<CR> " switch to previous buffer

"ag search
nnoremap \ :Ag<SPACE>

"split panes
nnoremap <C-W>\| <C-W>v
nnoremap <C-W>\- <C-W>S

"save
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-s :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>
inoremap <c-s> <c-o>:Update<CR>


"tab complete
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

"relative line number toggle
nnoremap <leader>l :call NumberToggle()<CR>

"bind zoom toggle
nnoremap <leader>z :call ZoomToggle()<CR>

"indent
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

" copy and paste to clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" golang maps
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
