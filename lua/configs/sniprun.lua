require'sniprun'.setup({

  --# you can combo different display modes as desired and with the 'Ok' or 'Err' suffix
  --# to filter only sucessful runs (or errored-out runs respectively)
  display = {
    -- "Classic",                    --# display results in the command-line  area
    -- "VirtualTextOk",              --# display ok results as virtual text (multiline is shortened)
    -- "VirtualText",             --# display results as virtual text
    -- "TempFloatingWindow",      --# display results in a floating window
    -- "LongTempFloatingWindow",  --# same as above, but only long results. To use with VirtualText[Ok/Err]
    -- "Terminal",                --# display results in a vertical split
    "NvimNotify",              --# display with the nvim-notify plugin
    -- "Api"                      --# return output to a programming interface
  },

  display_options = {
    terminal_scrollback = vim.o.scrollback, --# change terminal display scrollback lines
    terminal_line_number = false, --# whether show line number in terminal window
    terminal_signcolumn = false,  --# whether show signcolumn in terminal window
    terminal_persistence = true,  --# always keep the terminal open (true) or close it at every occasion (false)
    terminal_width = 45,          --# change the terminal display option width
    notification_timeout = 15000      --# timeout for nvim_notify output
  },

  live_display = { "TempFloatingWindow","LongTempFloatingWindow" }, --# display mode used in live_mode

  --# customize highlight groups (setting this overrides colorscheme)
  snipruncolors = {
    -- SniprunVirtualTextOk   =  {bg="#66eeff",ctermbg="Cyan"},
    -- SniprunFloatingWinOk   =  {fg=nil,ctermfg=nil},
    -- SniprunVirtualTextErr  =  {bg="#881515",ctermbg="DarkRed"},
    -- SniprunFloatingWinErr  =  {fg="#881515",ctermfg="DarkRed"},
    -- SniprunNvimNotifyWinOk   =  {fg="#2e340",ctermfg="Cyan"},
    -- SniprunNvimNotifyWinErr  =  {fg="#881515",ctermfg="DarkRed"},
  },

  -- live_mode_toggle='enable',      --# live mode toggle, see Usage - Running for more info,

  --# miscellaneous compatibility/adjustement settings
  inline_messages = true,    --# boolean toggle for a one-line way to display messages
                              --# to workaround sniprun not being able to display anything

  borders = 'double',         --# display borders around floating windows
                              --# possible values are 'none', 'single', 'double', or 'shadow'
})
vim.keymap.set('n', '<F5>', ":let b:caret=winsaveview() <CR> | :%SnipRun <CR>| :call winrestview(b:caret) <CR>", {})
