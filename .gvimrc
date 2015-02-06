" -- .gvimrc ------------------------------------------------------- {{{
"
" -- Interface
" -- Colorscheme
" -- Font
" -- Functions
" -- Autocommmands
"
" }}}


" -- Interface ----------------------------------------------------- {{{

" Remove all GUI features
set guioptions=c

" Use a non blinking block cursor
set guicursor=a:block-blinkon0

" Set window size
set lines=40
set columns=120

" }}}

" -- Colorscheme --------------------------------------------------- {{{

" Use a different colorscheme when in GUI mode
colorscheme pencil

" }}}

" -- Font ---------------------------------------------------------- {{{

if has('unix')
  set guifont=Inconsolata\ 14.5
else
  set guifont=Inconsolata:h14
end

" Remove extraneous line spacing
set linespace=0

" }}}

" -- Autocommmands ------------------------------------------------- {{{

augroup GUI
  autocmd!
  autocmd GUIEnter * set visualbell t_vb=  " Remove sound and visual error
augroup END

" }}}

" vim:foldmethod=marker
