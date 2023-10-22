-- Max : Source from this file is https://github.com/wbthomason/packer.nvim
--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Max : Here you add plugins
	-- MAX :ADD TELESCOPE
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Color Scheme
	use({ 'rose-pine/neovim', as = 'rose-pine', config=function()vim.cmd('colorscheme rose-pine')end })

	-- Tree setter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- Plugin for treesitter
	use( 'nvim-treesitter/playground')

	-- Harpoon 
	use( 'ThePrimeagen/harpoon')

	-- Undo Tree - local branch nd history
	use ('mbbill/undotree')

	-- Fugitive plugin
	use('tpope/vim-fugitive')

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

    -- Vim auto close tag
    use('alvan/vim-closetag')
    use('tpope/vim-surround')

end)

-- Max: Now we can use :PackerSync, :PackerUpdate ...
-- Configuration for tree sitter
--


    
