-- Set color scheme
function ColorMyPencils(color)
	-- Add color of fallback to 'rose-pine'
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- Setting a transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

end

ColorMyPencils()
