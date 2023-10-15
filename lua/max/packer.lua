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
end)

-- Max: Now we can use :PackerSync, :PackerUpdate ...
