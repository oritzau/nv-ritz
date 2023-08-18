vim.g.mapleader = " "
vim.g.localleader = "\\"

require("vars")
require("opts")
require("keys")
require("plug")

-- plugins
require("nvim-tree").setup{}
require("lualine").setup{
    options = {
        theme = "gruvbox"
    }
}
require("nvim-autopairs").setup{}
require("bufferline").setup{}

-- customized plugins
require("plugins.treesitter")
require("plugins.undotree")
require("plugins.lsp")
