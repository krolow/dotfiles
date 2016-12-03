"spell
set complete+=kspell "autocomplete
setlocal spell spelllang=en_us

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

"disable complete preview
set completeopt-=preview

set tw=0
