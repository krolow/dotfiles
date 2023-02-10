"NerdTree
let g:NERDTreeQuitOnOpen=0 "close after file is opened
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$']

nmap <silent> <leader>ne :NERDTreeToggle<cr>

"Markdown as github style
let vim_markdown_preview_github=1

"Enable autocomplete
let g:neocomplete#enable_at_startup=2
let g:neocomplete#enable_auto_select=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#auto_completion_start_length=1
inoremap <expr> <C-g> neocomplete#undo_completion()
inoremap <expr> <C-l> neocomplete#complete_common_string()

set nocompatible

set runtimepath+=~/work/neocomplete.vim/
set runtimepath+=~/.cache/neobundle/gocode/vim/

set fo+=aw
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 0
set tw=10 " just for testing purposes
setlocal omnifunc=gocode#Complete

filetype indent plugin on

"golang
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_build_constraints = 1
let g:go_echo_go_info = 0
let g:go_metalinter_autosave=1

let g:go_auto_sameids = 1
let g:go_guru_tags = "mycustomtag"
let g:go_list_type = "quickfix"

"ag
let g:ag_lhandler="botright lopen"

"ctrl+p
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|tmp|target'

"ale lint
let b:ale_linters = {'javascript': ['eslint'], 'rust': ['analyzer']}
let b:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
let g:jsx_ext_required = 0

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)



let g:coc_global_extensions = [ 'coc-tsserver' ]



"markdown preview
let vim_markdown_preview_hotkey='<C-l>'


"coc
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <expr> <Tab> coc#pum#visible() ?  coc#pum#confirm() : "<Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
