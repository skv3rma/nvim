nnoremap <leader>ss <Plug><DBUI_SaveQuery>
nnoremap <leader>ee <Plug><DBUI_ExecuteQuery>
nnoremap <leader>bb <Plug><DBUI_EditBindParameters>

let g:db_ui_table_helpers = {
\ 'mysql': {
\    'Count'  : 'select count(*) from {optional_schema}{table}',
\    'Explain': 'EXPLAIN ANALYZE {last_query}',
\    'List'   : 'select * from {table} order by id asc'
\ }
\ }

let g:db_ui_save_location = "~/database/db_ui"
