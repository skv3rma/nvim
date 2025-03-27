" hi VistaFloat ctermbg=237 guibg=#3a3a3a
hi VistaFloat ctermbg=NONE guibg=NONE

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = []
let g:fzf_preview_window = "none"
"
let g:vista_sidebar_position = "vertical topleft"
let g:vista_sidebar_width = 40
let g:vista_close_on_jump=1
let g:vista_floating_border="none"
let g:vista_fzf_opt=[]
let g:vista_keep_fzf_colors=1

let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.8, 'relative': v:true } }

" nnoremap <silent><leader>vi :Vista coc<CR>
" nnoremap <silent><leader>vd :Vista!!<CR>
nnoremap <silent><leader>vf :Vista!!<CR>

nnoremap <silent><leader>vv :Vista finder fzf:coc<CR>
nnoremap <silent><leader>vs :Vista show<CR>
