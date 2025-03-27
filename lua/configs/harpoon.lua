
-- vim.cmd('hi HarpoonInactive guibg=NONE guifg=#63698c')
-- vim.cmd('hi HarpoonActive guibg=NONE guifg=#7aa2f7')
-- vim.cmd('hi HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
-- vim.cmd('hi HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
-- vim.cmd('hi TabLineFill guibg=NONE guifg=#63698c')
-- vim.cmd('hi HarpoonWindow guibg=#1F1F28 guifg=#ebdbb2')
-- vim.cmd('hi HarpoonBorder guibg=#1f1d2e guifg=#a7c080')
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<F2>", function() harpoon:list():add() end)
vim.keymap.set("n", "<F3>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

vim.keymap.set("n", "1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "4", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)



-- nnoremap <C-a>   :lua <CR>
-- nnoremap <C-1> :lua require("harpoon.ui").toggle_quick_menu()<CR>
--
--
-- -- nnoremap gt     :lua require("harpoon.term").gotoTerminal(1)<CR>
-- -- nnoremap gT     :lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>
--
-- nnoremap 1     :lua require("harpoon.ui").nav_file(1)<CR>
-- nnoremap 2     :lua require("harpoon.ui").nav_file(2)<CR>
-- nnoremap 3     :lua require("harpoon.ui").nav_file(3)<CR>
-- nnoremap 4     :lua require("harpoon.ui").nav_file(4)<CR>
-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<leader>fm", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
