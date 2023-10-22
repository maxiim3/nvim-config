local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Add file to harpoon
vim.keymap.set("n", "<Leader>!", mark.add_file)

-- Open Harpoon menu
vim.keymap.set("n", "<Leader>0", ui.toggle_quick_menu)

vim.keymap.set("n", "<Leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<Leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<Leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<Leader>4", function() ui.nav_file(4) end)

