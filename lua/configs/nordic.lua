
local O = require('nordic.config').options
local C = require 'nordic.colors'
require 'nordic' .setup {
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette) return palette end,
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = true,
    -- Enable brighter float border.
    bright_border = true,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = true,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {
      Function = { italic = O.italic_comments},
      Selection = { italic = O.italic_comments},
      -- Function = { italic = O.italic_comments, fg = C.blue.bright}
      -- Function = { italic = O.italic_comments, fg = C.blue.bright},
      Keyword = { fg = C.magenta.base},
      -- Type = { fg = C., italic = O.italic_comments },
      Field = {fg = C.white0},
      -- StorageClass = { fg = C.white0 }
    },
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Avialable styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
}

local palette = require 'nordic.colors'
require 'nordic' .setup {
    override = {
        TelescopePromptTitle = {
            fg = palette.red.dim,
            bg = palette.yellow.dim,
            italic = true,
            underline = true,
            sp = palette.yellow.dim,
            undercurl = true
        }
    }
}

vim.cmd [[colorscheme nordic]]


