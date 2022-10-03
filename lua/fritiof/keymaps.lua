local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
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

keymap("n", "å", "[",opts);
keymap("n", "Å", "]",opts);

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>o", ":NvimTreeFocus<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-j>", ":bnext<CR>", opts)
keymap("n", "Ö", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
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
keymap("t", "<C-\\>", "<C-\\><C-N><C-w>l", term_opts)
