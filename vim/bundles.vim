call plug#begin('~/.vim/plugged')

"=============== UTILITIES
"behavior
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' | Plug 'Xuyuanp/nerdtree-git-plugin' "file drawer

Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder



"javascript
Plug 'othree/yajs.vim', {'for': 'javascript'}

"linter/indent
Plug 'editorconfig/editorconfig-vim'

call plug#end()
