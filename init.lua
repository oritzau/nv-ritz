require("vars")
require("opts")
require("keys")
require("plug")

-- plugins
require("nvim-tree").setup{}
require("lualine").setup{}
require("nvim-autopairs").setup{}
require("bufferline").setup{}

-- customized plugins
require("plugins.treesitter")
require("plugins.undotree")
require("plugins.lsp")
require("plugins.telescope")
