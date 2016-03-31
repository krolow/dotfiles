call plug#begin('~/.vim/plugged')

"THEMES
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'

"UTILITIES
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' | Plug 'Xuyuanp/nerdtree-git-plugin' "file drawer
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'terryma/vim-multiple-cursors' "select multiple occurencies
Plug 'rking/ag.vim'
Plug 'tpope/vim-surround'

"git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"LANGUAGES

"javascript
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}

"json
Plug 'elzr/vim-json', { 'for': 'json' }

"html/css/sass
Plug 'amirh/HTML-AutoCloseTag', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': ['html', 'css', 'scss']}
Plug 'gorodinskiy/vim-coloresque', {'for': 'html'}
Plug 'tpope/vim-haml', {'for': 'html'}
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}

"docker
Plug 'ekalinin/Dockerfile.vim'

"linter/indent/syntax
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'
Plug 'pmsorhaindo/syntastic-local-eslint.vim'

"golang
Plug 'fatih/vim-go', {'for': 'go'}

call plug#end()
