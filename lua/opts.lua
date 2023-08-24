local opt = vim.opt
local cmd = vim.api.nvim_command

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true
cmd("colorscheme darkplus")

-- context
opt.number = true
opt.relativenumber = true
opt.scrolloff = 8

-- filetypes
opt.encoding = "utf8"
opt.fileencoding = "utf8"

-- search
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- whitespace
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for

-- splits
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- clipboard
opt.clipboard = "unnamedplus"

-- other
vim.opt.updatetime = 50
vim.opt.guicursor = ""
