"Leader
let mapleader = ','
let g:mapleader = ','

"buffer map
nnoremap <leader>bn :bnext<CR> " switch to next buffer
nnoremap <leader>bd :bp\|:bd #<CR> " close current buffer
nnoremap <leader>bp :bprevious<CR> " switch to previous buffer

"ag search
nnoremap \ :Ag!<SPACE>

"split panes
nnoremap <C-W>\| <C-W>v
nnoremap <C-W>\- <C-W>S

"save
nnoremap <silent> <C-s :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>
inoremap <c-s> <c-o>:Update<CR>

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

"autocomplete
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ neocomplete#start_manual_complete()
" function! s:check_back_space() "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}

" golang maps
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

"enable tagbar
nmap <C-t> :TagbarToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"ctrl + p ... closes nerd tree
nnoremap <c-p> :NERDTreeClose\|CtrlP<CR>

"ctrl + b ... cloes nerd tree and list buffers
nnoremap <silent> <c-b> :NERDTreeClose\|:CtrlPBuffer<CR>

map <F12> :!alphasort \| formatrequires<CR>


nmap <Leader>pt <Plug>(Prettier)


nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

nnoremap <leader><Up>   :<C-u>silent! move-2<CR>==
nnoremap <leader><Down> :<C-u>silent! move+<CR>==
xnoremap <leader><Up>   :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap <leader><Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>g  :call CocAction('jumpDefinition', 'drop')<CR>


let vim_markdown_preview_hotkey='<C-m>'
