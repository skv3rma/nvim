    let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" - Popup window
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
" hidden by default, ctrl-/ to toggle
" preview window at the top
let g:fzf_preview_window = ['up:60%:wrap', 'ctrl-/']
" preview window at the right
" let g:fzf_preview_window = ['right:60%', 'ctrl-/']

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Path completion with custom source command
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Word completion with custom spec with popup layout option
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})

if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif

" autocmd! User FzfStatusLine call <SID>fzf_statusline()

" autocmd! FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" setup a command ProjectFiles
command! ProjectFiles execute 'FZFFiles' s:find_git_root()

nnoremap <silent><leader>fh :FZFHistory<CR>
nnoremap <silent><leader>fr :FZFHistory<CR>
nnoremap <silent><leader>fs :RG<CR>
nnoremap <silent><leader>ff :FZFFiles<CR>
nnoremap <silent><leader>fc :Commands<CR>
" Lines in the current buffer
nnoremap <silent><leader>fw :FZFBLines<Cr>
nnoremap <silent><leader>fa :FZFBLines<Cr>
" Lines in loaded buffers
nnoremap <silent><leader>fl :FZFBLines<Cr>
nnoremap <silent><leader>fb :Buffers<CR>
nnoremap <silent><leader>; :Buffers<CR>
nnoremap <silent><leader>fq :FZFQuickFix<CR>

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

nnoremap <silent><leader>. :ProjectFiles<CR>

" function! s:update_fzf_colors()
"   let rules =
"   \ { 'fg':      [['Normal',       'fg']],
"     \ 'bg':      [['Normal',       'bg']],
"     \ 'hl':      [['Comment',      'fg']],
"     \ 'fg+':     [['CursorColumn', 'fg'], ['Normal', 'fg']],
"     \ 'bg+':     [['CursorColumn', 'bg']],
"     \ 'hl+':     [['Statement',    'fg']],
"     \ 'info':    [['PreProc',      'fg']],
"     \ 'prompt':  [['Conditional',  'fg']],
"     \ 'pointer': [['Exception',    'fg']],
"     \ 'marker':  [['Keyword',      'fg']],
"     \ 'spinner': [['Label',        'fg']],
"     \ 'header':  [['Comment',      'fg']] }
"   let cols = []
"   for [name, pairs] in items(rules)
"     for pair in pairs
"       let code = synIDattr(synIDtrans(hlID(pair[0])), pair[1])
"       if !empty(name) && code > 0
"         call add(cols, name.':'.code)
"         break
"       endif
"     endfor
"   endfor
"   let s:orig_fzf_default_opts = get(s:, 'orig_fzf_default_opts', $FZF_DEFAULT_OPTS)
"   let $FZF_DEFAULT_OPTS = s:orig_fzf_default_opts .
"         \ empty(cols) ? '' : (' --color='.join(cols, ','))
" endfunction

" augroup _fzf
"   autocmd!
"   autocmd ColorScheme * call <sid>update_fzf_colors()
" augroup END
