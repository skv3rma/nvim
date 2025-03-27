require("transparent").setup({ -- Optional, you don't have to run setup.
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {'NvimNotify','NotifyBackground','HarpoonWindow', 'HarpoonBorder','SniprunFloatingWinOk', 'SniprunFloatingWinNormal','SniprunNvimNotifyWinOk'}, -- table: additional groups that should be cleared
})
