local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- remap the key used to leave insert mode

-- insert
map("i", "jk", "<Esc>", opts)

-- vertical navigation
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)

-- window movement 
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- tree
map("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Navigate buffers
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)
