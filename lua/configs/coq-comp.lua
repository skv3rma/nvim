
local lsp = require "lspconfig"
local coq = require "coq" -- add this

lsp.tsserver.setup()                              -- before
lsp.jdtls.setup(coq.lsp_ensure_capabilities()) -- after
