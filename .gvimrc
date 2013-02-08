"=================
"  gVim Settings
"=================
"
"  ~ General
"  ~ Interface
"  ~ Font
"  ~ Colorscheme
"  ~ Functions
"  ~ Mappings
"
"=================

"-----------
"  General
"-----------

" Autoreload Vim settings
augroup reload_gvimrc
  au!
  au BufWritePost $MYGVIMRC source $MYGVIMRC
augroup END

" Remove sound and visual error
au GUIEnter * set visualbell t_vb=

"-------------
"  Interface
"-------------

set guioptions-=T    " Hide the awful toolbar
set guioptions+=b,h  " Display a horizontal scrollbar

"--------
"  Font
"--------

if has("gui_gtk2")                          " Linux
  set guifont=Liberation\ Mono\ 10
else                                        " Windows
  set guifont=Liberation_Mono:h10:cDEFAULT
end

"---------------
"  Colorscheme
"---------------

" Use Peppermint when in GUI mode
colorscheme peppermint

"-------------
"  Functions
"-------------

" Write Mode
function! WriteMode()
  " Change colorscheme and background
  colorscheme hemisu
  set background=light
  " Adjust the window
  if has("unix")     " Linux
    set lines=23
    set columns=75
  else               " Windows 
    set lines=33
    set columns=100
  endif
  " Change the font size
  if has("gui_gtk2")                          " Linux
    set guifont=Liberation\ Mono\ 14
  else                                        " Windows
    set guifont=Liberation_Mono:h14:cDEFAULT
  endif
endfunction

"------------
"  Mappings
"------------

" Switch to Write Mode
nnoremap <leader>wm :call WriteMode()<cr>