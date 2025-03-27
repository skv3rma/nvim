
-- vim.api.nvim_set_hl(0,"NotifyBackground",{ bg="NONE", fg="#a7c080"})
-- vim.api.nvim_set_hl(0,"NotifyBackground",{ bg="", fg="#a7c080"})
--highlight NotifyERRORBorder guifg=#8A1F1F

-- vim.cmd("highlight NotifyWARNBorder guifg=#79491D")
-- vim.cmd("highlight NotifyINFOBorder guifg=#4F6752")
-- vim.cmd("highlight NotifyDEBUGBorder guifg=#8B8B8B")
-- vim.cmd("highlight NotifyTRACEBorder guifg=#4F3552")
-- vim.cmd("highlight NotifyERRORIcon guifg=#F70067")
-- vim.cmd("highlight NotifyWARNIcon guifg=#F79000")
-- vim.cmd("highlight NotifyINFOIcon guifg=#A9FF68")
-- vim.cmd("highlight NotifyDEBUGIcon guifg=#8B8B8B")
-- vim.cmd("highlight NotifyTRACEIcon guifg=#D484FF")
-- vim.cmd("highlight NotifyERRORTitle  guifg=#F70067")
-- vim.cmd("highlight NotifyWARNTitle guifg=#F79000")
-- vim.cmd("highlight NotifyINFOTitle guifg=#A9FF68")
-- vim.cmd("highlight NotifyDEBUGTitle  guifg=#8B8B8B")
-- vim.cmd("highlight NotifyTRACETitle  guifg=#D484FF")
-- vim.cmd("highlight link NotifyERRORBody Normal")
-- vim.cmd("highlight link NotifyWARNBody Normal")
-- vim.cmd("highlight link NotifyINFOBody Normal")
-- vim.cmd("highlight link NotifyDEBUGBody Normal")
-- vim.cmd("highlight link NotifyTRACEBody Normal")
vim.cmd("highlight NotifyBackground guibg=NONE ctermbg=NONE")

require("notify").setup(
  {
    background_colour = "#1F1F28",
    fps = 30,
    icons = {
      DEBUG = "  ",
      ERROR = "  ",
      INFO = "  ",
      TRACE = "✎ ",
      WARN = "  "
    },
    level = 1,
    minimum_width = 50,
    render = "minimal", -- minimum, 'simple', 'wrapped-compact'
    -- render = "wrapped-compact", -- minimum, 'simple', 'wrapped-compact'
    top_down = true
  })

  vim.keymap.set("n", "<F6>", function() require("notify").dismiss() end)

