"spell
set complete+=kspell "autocomplete
setlocal spell spelllang=en_us
set updatetime=300
set nobackup
set nowritebackup

"copy to clipboard
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set clipboard^=unnamed
  else
    set clipboard^=unnamedplus
  endif
endif


"delete macosx work as delete
set backspace=indent,eol,start

set completeopt=preview,menuone

set tw=0
