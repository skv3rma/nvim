-- local notify = require('notify');
function Todo(event)
  -- print("Hello World")
  for key, value in pairs(event) do
    print("key   " ,key)
    print("value ", value)
  end
  print(event)
  -- notify("Mode Changed")
end

-- create user command (that can be run from command prompt)
-- :Todo
vim.api.nvim_create_user_command("Todo", Todo, {})
-- vim.api.nvim_create_autocmd("BufEnter", { callback = Todo })
-- vim.api.nvim_create_autocmd("ModeChanged", { callback = Todo })
vim.keymap.set("n", "<leader>8", Todo);
