-- vim.cmd [[highlight PopupColor ctermbg=black ctermfg=blue guifg=blue guibg=NONE]]
local popup = require "plenary.popup"
local function create_highlight_popup()
  local win_id = popup.create({ "item 1", "item 2", "item 3" }, {
    line = 15,
    col = 45,
    minwidth = 20,
    border = true,
    highlight = "PopupColor",
  })
  print(win_id)
end

require("dressing").setup {
  relative = "win",
};

local select_handler = function(value)
  print("selected value : " .. value);
end;

local function create_select()
  vim.ui.select({ 'apple', 'banana', 'mango' }, {
    prompt = "Title",
    telescope = require("telescope.themes").get_cursor(),
  }, select_handler);
end
--[[
]]

--
local input_handler = function(value)
  print(value);
end;

local function create_input()
  vim.ui.input({ prompt = "Enter Value : " }, input_handler);
end

vim.keymap.set("n", "<C-1>", create_input);
vim.keymap.set("n", "<C-2>", create_select);
vim.keymap.set("n", "<C-3>", create_highlight_popup);
vim.keymap.set("n", "<C-4>", function() print(vim.inspect(vim.ui)) end);
