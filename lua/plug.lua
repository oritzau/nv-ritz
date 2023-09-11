return require("packer").startup(function(use)
    -- theme
    use { "catppuccin/nvim", as = "catppuccin" }
    use "shaunsingh/moonlight.nvim"
    -- packer
    use "wbthomason/packer.nvim"
    --tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons"
    }
    --lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }
    -- autopairs
    use "windwp/nvim-autopairs"
    -- surround
    use "tpope/vim-surround"
    -- bufferline 
    use {
        "akinsho/bufferline.nvim",
        tag = "*",
        requires = "nvim-tree/nvim-web-devicons"
    }
    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    }
    -- undotree
    use "mbbill/undotree"
    -- lsp
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
        -- LSP Support
        {"neovim/nvim-lspconfig"},             -- Required
        {"williamboman/mason.nvim"},           -- Optional
        {"williamboman/mason-lspconfig.nvim"}, -- Optional

        -- Autocompletion
        {"hrsh7th/nvim-cmp"},     -- Required
        {"hrsh7th/cmp-nvim-lsp"}, -- Required
        {"L3MON4D3/LuaSnip"},     -- Required
        }
    }
    -- telescope
    use {
      "nvim-telescope/telescope.nvim", tag = "0.1.2",
    -- or                            , branch = "0.1.x",
      requires = {"nvim-lua/plenary.nvim"}
    }
    -- vimtex
    use "lervag/vimtex"
    -- pee pee poo poo (Meghan)
end)
