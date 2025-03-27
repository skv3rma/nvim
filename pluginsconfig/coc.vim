
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" \ 'coc-java-dependency',
" Global coc extensions
let g:coc_global_extensions = [
  \ 'coc-java',
  \ 'coc-java-lombok',
  \ 'coc-rust-analyzer',
  \ 'coc-xml',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-tslint',
  \ 'coc-tslint-plugin',
  \ 'coc-json',
  \ 'coc-lua',
  \ 'coc-css',
  \ 'coc-db',
  \ 'coc-actions',
  \ 'coc-highlight',
  \ 'coc-snippets',
  \ 'coc-lists',
  \ 'coc-pairs',
  \ 'coc-yank',
  \ 'coc-explorer',
  \ 'coc-pyright',
  \ 'coc-db',
  \ 'coc-marketplace',
  \]

  " Use <c-space> to trigger completion
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" " format on enter, <cr> could be remapped by other vim plugin
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <C-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-Tab>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Example: `<leader>aap` for current paragraph
" xmap cs  <Plug>(coc-codeaction-selected)<CR>
" nmap cs  <Plug>(coc-codeaction-selected)<CR>

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ca  <Plug>(coc-codeaction)
nmap <leader>cc          :Telescope coc commands<CR>
nmap <leader>ca          :Telescope coc code_actions<CR>
nmap <leader>cf          :Telescope coc code_file_actions<CR>
xmap <leader>ca          :Telescope coc code_actions<CR>
" Apply AutoFix to problem on the current line.
nmap <leader>cd          :Telescope coc diagnostics<CR>
nmap <leader>cq          :Telescope coc diagnostics<CR>
nmap <leader>vv          :Telescope coc document_symbols<CR>
nmap <leader>ds          :Telescope coc document_symbols<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Rename current file
nnoremap <leader>rf :CocCommand workspace.renameCurrentFile<CR>

" Formatting selected code.
" visual mode only
xmap <leader>fo  <Plug>(coc-format-selected)
nmap <leader>fo  <Plug>(coc-format-selected)
" Run the Code Lens action on the current line.
nmap cl  <Plug>(coc-codelens-action)<CR>

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocActionAsync('runCommand', 'editor.action.organizeImport')

" organize imports
nnoremap <silent><leader>o :OR<CR>

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd FileType python let b:coc_root_patterns = \ ['.git', '.env', 'pom.xml', 'package.json']
