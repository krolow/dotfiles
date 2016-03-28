"NerdTree
let g:NERDTreeQuitOnOpen=0 "close after file is opened
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$']

nmap <silent> <leader>ne :NERDTreeToggle<cr>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
