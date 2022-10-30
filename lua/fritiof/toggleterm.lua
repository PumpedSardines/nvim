require("toggleterm").setup()

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
--vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
local Terminal = require("toggleterm.terminal").Terminal

local node = Terminal:new({ cmd = "node", direction = "float", hidden = true })

function _NODE_TOGGLE()
	node:toggle()
end
