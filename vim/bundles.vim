call plug#begin('~/.vim/plugged')

"THEMES
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'

"UTILITIES
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' | Plug 'Xuyuanp/nerdtree-git-plugin' "file drawer
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'vim-airline/vim-airline'


"LANGUAGES

"javascript
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}

"json
Plug 'elzr/vim-json', { 'for': 'json' }

"linter/indent
Plug 'editorconfig/editorconfig-vim'

call plug#end()
