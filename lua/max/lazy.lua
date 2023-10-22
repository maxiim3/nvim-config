local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
	-- COLOR SCHEME
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
			-- Setting a transparent background
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	-- NERDTREE
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{ "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
		},
		config = function()
			require("neo-tree").setup()
		end,
	},
	-- TREESITTER
	{
		"nvim-treesitter/nvim-treesitter",
		version = false, -- last release is way too old and doesn't work on Windows
		build = ":TSUpdate",
		event = { "LazyFile", "VeryLazy" },
	},
	-- TREESITTER TEXT
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	-- TREESITTER CONTEXT
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "LazyFile",
		enabled = true,
		opts = { mode = "cursor", max_lines = 3 },
	},
	-- TS AUTOTAG
	{
		"windwp/nvim-ts-autotag",
		event = "LazyFile",
		opts = {},
	}
)
