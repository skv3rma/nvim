require('noirbuddy').setup {
-- christmas, miami-nights, minimal, slate, kiwi
  preset = 'miami-nights',
  -- preset = 'minimal',
  -- preset = 'slate',
  -- preset = 'kiwi',
  colors = {
    background = '#1f1d2e',
    noir_0 = '#eeeeee',
    noir_1 = '#f5f5f5',
    noir_2 = '#d5d5d5',
    noir_3 = '#b4b4b4',
    noir_4 = '#a7a7a7',
    noir_5 = '#949494',
    noir_6 = '#737373',
    noir_7 = '#535353',
    noir_8 = '#323232',
    noir_9 = '#403d52',
    diagnostic_error = '#ff0038',
    diagnostic_warning = '#ff7700',
    diagnostic_info = '#47eae0',
    diagnostic_hint = '#47eae0',
    diff_add = '#00ff77',
    diff_change = '#47eae0',
    diff_delete = '#ff0038',
  },
  styles = {
      italic = true,
      bold = true,
      underline = false,
      undercurl = true,
  },

}
-- Require colorbuddy...
local Color, colors, Group, groups, styles = require('colorbuddy').setup {}

-- Override specific highlight groups...
 Group.new('TelescopeTitle', colors.primary)
 Group.new('TelescopeBorder', colors.secondary)
 Group.new('CursorLineNr', colors.primary, colors.noir_9)
 Group.new('Searchlight', nil, colors.secondary)
 Group.new('@comment', colors.noir_7)
 Group.new('@punctuation', colors.noir_2)

 -- Add font styles to highlight groups...
 Group.new('@constant', colors.noir_2, nil, styles.bold)
 Group.new('@constructor', colors.noir_4, nil, styles.NONE)
 Group.new('@function', colors.noir_0)
 Group.new('@function.builtin', colors.noir_2)
 Group.new('@function.call', colors.noir_2)
 Group.new('@function.builtin', colors.secondary)
 Group.new('@function.call', colors.primary)
 Group.new('@method', colors.primary,nil, styles.italic)
 Group.new('@method.call', colors.secondary,nil, styles.italic)

 -- Link highlight groups...
 Group.link('SignifySignAdd', groups.DiffAdd)
 Group.link('SignifySignChange', groups.DiffChange)
 Group.link('SignifySignDelete', groups.DiffDelete)

