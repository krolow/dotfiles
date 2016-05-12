"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if (col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w')
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

" toggle relative number line

function! NumberToggle()
  if (&relativenumber == 1)
    set norelativenumber
    set number
  else
    set nonumber
    set relativenumber
  endif
endfunction

" {{{ Zoom / Restore window
" https://coderwall.com/p/qqz1lq/vim-zoom-restore-window
function! ZoomToggle()
  if exists('t:zoomed') && t:zoomed
    exec t:zoom_winrestcmd
    let t:zoomed = 0
  else
    let t:zoom_winrestcmd = winrestcmd()
    resize
    vertical resize
    let t:zoomed = 1
  endif
endfunction
