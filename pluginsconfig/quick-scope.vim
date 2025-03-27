" Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']
" Your .vimrc
highlight QuickScopePrimary guifg='#FF0084' gui=NONE ctermfg=196 cterm=NONE
highlight QuickScopeSecondary guifg='#FF0084' gui=NONE ctermfg=196 cterm=NONE

" Your .vimrc
" highlight QuickScopePrimary guifg='#afff5f' gui=NONE ctermfg=196 cterm=NONE
" highlight QuickScopeSecondary guifg='#F1C40F' gui=NONE ctermfg=196 cterm=NONE

" Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap <leader>qc <plug>(QuickScopeToggle)
xmap <leader>qc <plug>(QuickScopeToggle)


