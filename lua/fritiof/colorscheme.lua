vim.cmd("colorscheme tokyonight")

local colorscheme = vim.g.colors_name

if colorscheme == "tokyonight" then
	vim.cmd("highlight LineNr guifg=#88aacc")
	vim.cmd("highlight CursorLineNr guifg=#88ffff")
	vim.cmd("set cursorline")
	vim.cmd("set cursorlineopt=number")
end
