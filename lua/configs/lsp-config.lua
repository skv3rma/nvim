require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "jdtls",
    "lemminx",
    "tsserver",
    "jqls",
    "cssls",
    "cssmodules_ls",
    "emmet_language_server",
    "html",
    "htmx",
    "jsonls",
    "sqlls",
    "yamlls",
    "eslint",
    "gopls",
    "jedi_language_server",
    "tailwindcss",
  },
  automatic_installation = true,
  handlers = {
    function(server_name)
      -- print("setting up ", server_name)
      require("lspconfig")[server_name].setup {}
    end,
  }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").jdtls.setup {}
require("lspconfig").lemminx.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").jqls.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").cssmodules_ls.setup({})
require("lspconfig").emmet_language_server.setup({})
require("lspconfig").html.setup({})
require("lspconfig").htmx.setup({})
require("lspconfig").jsonls.setup({})
require("lspconfig").sqlls.setup({})
require("lspconfig").yamlls.setup({})
require("lspconfig").eslint.setup({})
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>p', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- require('lspconfig')['jdtls'].setup {
--   capabilities = capabilities
-- }
--
-- require('lspconfig')['lua_ls'].setup {
--   capabilities = capabilities
-- }
-- require('lspconfig')['tsserver'].setup {
--   capabilities = capabilities
-- }
-- require('lspconfig')['sqlls'].setup {
--   capabilities = capabilities
-- }
--
-- require('lspconfig')['cssls'].setup {
--   capabilities = capabilities
-- }
--
-- require('lspconfig')['lemminx'].setup {
--   capabilities = capabilities
-- }
