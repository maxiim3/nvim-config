-- Max : Add config from repo https://github.com/nvim-telescope/telescope.nvim
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Max : Add the following bottom to find git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Max : Add the following bottom to grep 
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });	
end)

