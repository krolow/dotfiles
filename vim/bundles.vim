call plug#begin('~/.vim/plugged')

"THEMES
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'

"UTILITIES
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' | Plug 'Xuyuanp/nerdtree-git-plugin' "file drawer
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'terryma/vim-multiple-cursors' "select multiple occurencies

"git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"LANGUAGES

"javascript
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}

"json
Plug 'elzr/vim-json', { 'for': 'json' }

"html
Plug 'amirh/HTML-AutoCloseTag', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'html'}
Plug 'gorodinskiy/vim-coloresque', {'for': 'html'}
Plug 'tpope/vim-haml', {'for': 'html'}
Plug 'mattn/emmet-vim', {'for': 'html'}

"linter/indent/syntax
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
