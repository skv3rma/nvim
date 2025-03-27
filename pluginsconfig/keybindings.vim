" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "
" Disable arrow keys if you want
" noremap   <Up>     <NOP>
" noremap   <Down>   <NOP>
" noremap   <Left>   <NOP>
" noremap   <Right>  <NOP>

" format file
noremap <silent><leader>i :Format<CR>

" Redo -> Reverse undo
noremap U <C-r>

" Open Vim Related Configs
noremap <silent><leader>1 :e ~/.config/nvim/init.vim<CR>
noremap <silent><leader>2 :e ~/.config/nvim/pluginsconfig/init.vim<CR>
noremap <silent><leader>3 :e ~/.config/nvim/pluginsconfig/keybindings.vim<CR>
noremap <silent><leader>4 :e ~/.config/nvim/themes/init.vim<CR>
noremap <silent>! :s/^//g<CR><leader>/

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <silent><leader>yy :StripWhitespace<CR>


" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

" === vim-jsdoc shortcuts ==="
" Generate jsdoc for function under cursor
"nmap <leader>z :JsDoc<CR>

" yanking from current position to end of line
nnoremap Y y$

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent><leader>y :call ClipboardYank()<cr>
" vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent><leader>p :call ClipboardPaste()<cr>p


" Change to normal mode from insert mode
inoremap ii <esc>

" hide colorcolumn(dl = disable line)
nnoremap <silent> <leader>dl :set colorcolumn=0<CR>
" display colorcolumn (el = enable line)
nnoremap <silent> <leader>el :set colorcolumn=100<CR>
" Makes the background transparent
"
function TokyoNight()
    highlight EndOfBuffer guibg=#191c29 guifg=#191c29
    " highlight CursorLine cterm=NONE ctermbg=black guibg=#191c29
    highlight CursorLine cterm=NONE ctermbg=black guibg=#161821
    highlight Visual guibg=#161821
    " highlight CursorLine cterm=NONE ctermbg=black guibg=#2e3440
    highlight LineNr guibg=NONE guifg=#616f55
endfunction

function Gruvbox()
    highlight CursorLine cterm=NONE ctermbg=black guibg=#434343
    highlight VertSplit ctermbg=NONE guibg=#434343 guifg=#434343
    highlight EndOfBuffer guibg=#282828 guifg=#282828
    highlight Visual guibg=#434343
    highlight LineNr guibg=NONE guifg=#434343
endfunction

function MakeTransparent()
    " makes the background transparent
    highlight Normal ctermbg=NONE guibg=NONE
    " :call Gruvbox()
    :call TokyoNight()
endfunction

" nnoremap <silent> <leader>o  :hi Normal ctermbg=NONE guibg=NONE<CR>
" nnoremap <silent> <leader>o  :call MakeTransparent()<CR>

let t:is_transparent = 0
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#161821 ctermbg=black
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>

" close without saving
nnoremap <leader>q :bd!<CR>

" ====================== buffer switching fuzzy finder
" Switch to buffer by providing unique keyword of file name
" nnoremap <leader>bb :b<Space>
" quit buffer
noremap <silent> <leader>bd :bd<CR>
" quit buffer without saving changes
noremap <silent> <leader>bq :bd!<CR>
" next buffer
" noremap <silent> <leader>bn :bn<CR>
" previous buffer
" noremap <silent> <leader>bp :bp<CR>
" first buffer
" noremap <silent> <leader>bf :bfirst<CR>
" last buffer
" noremap <silent> <leader>bl :blast<CR>
" close all buffers excepts this one
noremap <silent> <leader>bo :BufOnly<CR>

"========================= buffer creation
" open a new buffer
" noremap <leader>ee :e<Space>
" create a file at the current file's dir
" noremap <leader>ef :e %:h/
" create a new directory
noremap <leader>mk :!mktouch %:h/

"Save File
nnoremap <silent> <leader>ww :w<CR>

"Save File and quit
nnoremap <silent> <leader>wq :wq<CR>

" Save all files
nnoremap <silent> <leader>wa :wa<CR>

" Split Resizing
noremap <silent> <C-Home>  :vertical resize 30<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Left>  :vertical resize -3<CR>
noremap <silent> <C-Up>    :resize +3<CR>
noremap <silent> <C-Down>  :resize -3<CR>

" zi = zoom in
noremap <silent><leader>zi <c-w>_ \| <c-w>\|
" zi = zoom out
noremap <silent><leader>zo <c-w>=

" Split navigation
noremap <silent><leader>h :wincmd h<CR>
noremap <silent><leader>j :wincmd j<CR>
noremap <silent><leader>k :wincmd k<CR>
noremap <silent><leader>l :wincmd l<CR>

" Quickly open/reload vim
nnoremap <silent> <A-r> :Reload<CR>

" `SPC l s` - save current session
" nnoremap <leader>ss :SSave<CR>

" `SPC l l` - list sessions / switch to different project
" nnoremap <leader>sc :SClose<CR>

function! ToggleVisualHighlight()
    " hi Visual  guibg=#101010 gui=none
    " hi Visual  guibg=#214c5a guifg=NONE
    " highlight CursorLine cterm=NONE ctermbg=NONE guibg=#3c3836
    " highlight CursorLine cterm=NONE ctermbg=NONE guibg=#161821
    highlight CursorLine cterm=NONE ctermbg=NONE guibg=#434343
    " highlight LineNr guibg=#1A237E
    :Limelight!!
endfunction

" nmap <silent>` :Limelight!!<CR>
" xmap <silent>` :Limelight!!<CR>

" activate limelight with goyo
" nnoremap <silent><leader>gg :FloatermToggle<CR>
" nnoremap <silent><leader>tt :FloatermToggle<CR>
" nnoremap <silent><leader><SPACE> :FloatermToggle<CR>

" " Activate limelight with goyo
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

function! ToggleWindowHorizontalVerticalSplit()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical' " is vertical switch to horizontal
    windo wincmd K
    let t:splitType = 'horizontal'

  else " is horizontal switch to vertical
    windo wincmd H
    let t:splitType = 'vertical'
  endif
endfunction

" Toggle Window Split Type
nnoremap <silent><leader><leader>wt :call ToggleWindowHorizontalVerticalSplit()<cr>


" Visual Mode : Move selected lines up(K) down(J)
vnoremap J :move '> +1<CR>gv=gv
vnoremap K :move '< -2<CR>gv=gv

vnoremap > >gv
vnoremap < <gv

" Replace the word under cursor in entire file
nnoremap R :%s/\<<C-r><C-w>\>/

" Center the cursor
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" append given character at the last of selected lines
" vnoremap <leader>al :norm A
" append given character at the start of seleted lines
" vnoremap <leader>as :norm I
function! SplitLineNicely()
    " Save previous value of last search register
    let saved_last_search_pattern = @/

    " :substitute replaces the content of the search register with the `\s\+`
    " pattern highlighting all whitespaces in the file
    substitute /\s\+/\r/g

    " Restore previous search register
    let @/ = saved_last_search_pattern
endfunction

" === Search shorcuts === "
" find and replace in a file
map <leader>sf :%s///g<left><left><left>
" find and replace in a line
map <leader>sl :s///g<left><left><left>
nmap <silent> <leader>/ :nohlsearch<CR>
" merge lines in normal mode
nnoremap <leader>ml :%j<CR>
" merge lines in visual mode
vnoremap <leader>ml :j<CR>

" split in multiple lines by a character -> normal mode
nnoremap <leader>sl :%s/\s/\r/g
" split in multiple lines by a character -> visual mode
" \r = new line in vim
vnoremap <leader>sl :s/\s/\r/g

" append in start of line
nnoremap <leader>as :%s/^/
" append in last of every line
nnoremap <leader>al :%s/$/
" append in start/end of line in visual mode
vnoremap <leader>as :s/^/
vnoremap <leader>al :s/$/

nnoremap <leader>i :IndentLinesToggle<CR>

function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction

" visually select the current word
nnoremap vw viw
" vw gg : toggle the case of the visually selected text
vnoremap gg y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
" capitalize the current word
nnoremap gU gUaw
" lowercase the current word
nnoremap gu guaw
nnoremap <leader>z :wa<CR>
nnoremap <leader>zz :wa!<CR>

" notes taking

nnoremap <leader>fo :Format<CR>
" lines


" nnoremap <silent><leader><leader>wt :call ToggleWindowHorizontalVerticalSplit()<cr>

" nnoremap <F9> ggVG
" vnoremap <F10> :SnipRun<CR>
nnoremap tt :TransparentEnable<CR>

" Sniprun
" nnoremap <silent><F5> ggVG <bar> :SnipRun<CR>

