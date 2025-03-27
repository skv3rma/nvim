" 'Most Recent Files' number
let g:startify_files_number           = 18

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] }
  \ ]
" Fancy custom header
let g:startify_custom_header = [
\'    _________            .__.__    ____   ____',
\'   /   _____/__ __  ____ |__|  |   \   \ /   /',
\'   \_____  \|  |  \/    \|  |  |    \   Y   /',
\'   /        \  |  /   |  \  |  |__   \     /',
\'  /_______  /____/|___|  /__|____/    \___/',
\'          \/           \/',
\ '',
\ ]
