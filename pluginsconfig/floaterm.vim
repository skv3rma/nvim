" Floaterm
" let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.95
let g:floaterm_height=0.95
let g:floaterm_wintitle=0
let g:floaterm_title='[Runner : $1]'
let g:floaterm_autoclose=1
let g:floaterm_autohide=2
let g:floaterm_position='center'
let g:floaterm_rootmarkers=['.project', '.git', '.hg', '.svn', '.root', '.gitignore', 'pom', 'package.json', 'nodemon.json']

" Configuration example

" Set floaterm window's background to
" hi Floaterm  guibg=#161616 guifg=NONE ctermbg=black ctermfg=white

" hi Floaterm  guibg=#1f1d2e guifg=#a7c080
" hi FloatermBorder guibg=#1f1d2e guifg=#a7c080
"
" nightfox
" hi Floaterm  guibg=#232136 guifg=#a7c080
" hi FloatermBorder guibg=#232136 guifg=#a7c080


" everforest
" hi Floaterm  guibg=#1e2326 guifg=#a7c080
" hi FloatermBorder guibg=#1e2326 guifg=#a7c080

" kanagawa
" hi Floaterm  guibg=#1F1F28 guifg=#a7c080
" hi FloatermBorder guibg=#1F1F28 guifg=#a7c080

"--duskfox
" hi Floaterm  guibg=#232136 guifg=#a7c080
" hi FloatermBorder guibg=#232136 guifg=#a7c080

" Noctis Obscuro
" hi Floaterm  guibg=#031417 guifg=#a7c080
" hi FloatermBorder guibg=#031417 guifg=#a7c080

" nightfox
hi Floaterm  guibg=#232136 guifg=#edd5ad
hi FloatermBorder guibg=#232136 guifg=#edd5ad


" Set floating window border line color to cyan, and background to orange
" hi FloatermBorder guibg=#3c3836 guifg=#edd5ad
" hi Floaterm  guibg=#3c3836 guifg=#edd5ad
" hi FloatermNC guibg=#2e3440 guifg=NONE ctermbg=black ctermfg=white

augroup NvimCloseTermWin


nnoremap   <silent>   <F10>    :FloatermNew<CR>
tnoremap   <silent>   <F10>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F4>   :FloatermToggle<CR>
tnoremap   <silent>   <F4>   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <F12>  :FloatermNew --name=
tnoremap   <F12>  <C-\><C-n>:FloatermNew --name=

" Toggles the current open terminal
" nnoremap   <silent> <leader>tt   :FloatermToggle<CR>
" tnoremap   <silent> <leader>tt   <C-\><C-n>:FloatermToggle<CR>

" Choose from list to toggle
" nnoremap   <leader>tl   :FloatermToggle<Space>
" tnoremap   <leader>tl   <C-\><C-n>:FloatermToggle<Space>


" nnoremap   <silent><leader>tf    :FloatermNew --name="lf"  lf<CR>
" tnoremap   <silent><leader>tf    <C-\><C-n>:FloatermNew --name="lf" lf<CR>
" nnoremap   <silent><leader>tp    :FloatermNew --name="ps"  procs<CR>
" tnoremap   <silent><leader>tp    <C-\><C-n>:FloatermNew --name="ps" procs<CR>
" nnoremap   <silent><leader>ty    :FloatermNew --name="top" btop<CR>
" tnoremap   <silent><leader>ty    <C-\><C-n>:FloatermNew --name="top" btop<CR>

