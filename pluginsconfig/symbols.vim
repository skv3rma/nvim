" Characters from a to z
inoremap :c  <ESC>a<SPACE>
inoremap :x ⛌ <ESC>a<SPACE>
inoremap :m 󰍴 <ESC>a<SPACE>
" inoremap :n 󰙏  : <ESC>a<SPACE>
inoremap :d  <ESC>a<SPACE>
inoremap :e ◆ <ESC>a<SPACE>
inoremap :h   <ESC>a<SPACE>
inoremap :l λ = <ESC>a<SPACE>

" special ascii mathematical symbols
inoremap ,ma +
inoremap ,mm -
inoremap ,dd /
inoremap ,do $
inoremap ,xx *
inoremap ,pp %
inoremap ,pa ()<ESC>i

inoremap ,co :
inoremap ,ca ^
inoremap ,cc {}<ESC>i
inoremap ,bb []<ESC>i
inoremap ,ab <>();<ESC>i
inoremap ,hh #
" inoremap ,am &
inoremap ,aa &
inoremap ,at @
inoremap ,ar ->
inoremap ,arr =>
inoremap ,ed ==
inoremap ,ee =
inoremap ,ff +=
inoremap ,gg *=
inoremap ,ne !=
inoremap ,ec !
inoremap ,uu _
inoremap ,ud __
inoremap ,qq ?

" box draw around text
nnoremap <leader><leader>tr :.!toilet -w 200 -f term -F border<CR>
" mark the start of line as checked
nnoremap <leader><leader>k I<ESC>xi <ESC>

