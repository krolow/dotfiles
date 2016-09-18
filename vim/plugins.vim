"NerdTree
let g:NERDTreeQuitOnOpen=0 "close after file is opened
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$']

nmap <silent> <leader>ne :NERDTreeToggle<cr>

"Markdown as github style
let vim_markdown_preview_github=1

"Enable autocomplete
let g:neocomplete#enable_at_startup=2

"golang
let g:go_fmt_command="goimports"
let g:go_highlight_types=1
