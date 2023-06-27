require('dark_flat').setup({})

function ColorMyPencils(color) 
	color = color or "dark_flat"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
