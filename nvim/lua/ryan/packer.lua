vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use "nvim-lua/plenary.nvim"
    use 'ThePrimeagen/vim-be-good'
    use { "catppuccin/nvim", as = "catppuccin" }
    use ( 'nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
    use 'nvim-treesitter/playground'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'akinsho/toggleterm.nvim'
    use 'nvim-tree/nvim-web-devicons' use 'andweeb/presence.nvim'
    use 'github/copilot.vim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    } 
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }  
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
end)
