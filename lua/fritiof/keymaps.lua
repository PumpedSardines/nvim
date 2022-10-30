local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-- Remove some keybindings that are used elsewhere
keymap("", "<S-m>", "<Nop>", opts) -- Move to middle of screen
keymap("", "<C-m>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-j>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>k", opts)
keymap("n", "<C-ö>", "<C-w>l", opts)
keymap("n", "<C-\\>", "<C-w>l", opts)

keymap("n", "K", "20j", opts)
keymap("n", "L", "20k", opts)

keymap("n", "o", "o<Esc>", opts)
keymap("n", "O", "O<Esc>", opts)

keymap("n", "Å", "{", opts)
keymap("n", "å", "}", opts)

keymap("n", "cä", "c^", opts)
keymap("n", "cÄ", "c$", opts)
keymap("n", "dä", "d^", opts)
keymap("n", "dÄ", "d$", opts)

keymap("n", "ä", "^", opts)
keymap("n", "Ä", "$", opts)
keymap("v", "ä", "^", opts)
keymap("v", "Ä", "$", opts)

--keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
--keymap("n", "<leader>o", ":NvimTreeFocus<cr>", opts)

--keymap("n", "<leader>c", ":Bdelete<cr>", opts)

--	maps.n["<leader>c"] = { "<cmd>bdelete<cr>", desc = "Close window" }

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "Ö", ":bnext<CR>", opts)
keymap("n", "<S-j>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Visual --
--Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- options key is option + k = ª option + l = ﬁ
keymap("v", "ﬁ", ":m .-2<CR>gv=gv", opts)
keymap("v", "ª", ":m .+1<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "K", ":move '>+1<CR>gv-gv", opts)
keymap("x", "L", ":move '<-2<CR>gv-gv", opts)
keymap("x", "ª", ":move '>+1<CR>gv-gv", opts)
keymap("x", "ﬁ", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-j>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-ö>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<esc>", [[<C-\><C-n>]], term_opts)
