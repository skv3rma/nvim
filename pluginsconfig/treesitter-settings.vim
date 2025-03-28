lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "java","python","xml" -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}

require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  }
}
local ts_utils = require 'nvim-treesitter.ts_utils'
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
