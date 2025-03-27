" === Easy-motion shortcuts ==="
"   <leader>w - Easy-motion highlights first word letters bi-directionally
" Move to word
map  <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)
" 2 character search motion
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" override default search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1

