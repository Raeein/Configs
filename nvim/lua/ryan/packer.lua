vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use { 'wbthomason/packer.nvim', opt = true }
    -- use '/Users/raeeinbagheri/Documents/Projects/Lua/screenshot.nvim'
    use 'Raeein/screenshot.nvim'
    use 'airblade/vim-rooter'
    use "nvim-lua/plenary.nvim"
    use 'ThePrimeagen/vim-be-good'
    use 'nvim-treesitter/playground'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'akinsho/toggleterm.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'andweeb/presence.nvim'
    use 'github/copilot.vim'
    use 'folke/tokyonight.nvim'
    use 'mhinz/vim-startify'
    -- Make it rain
    use 'eandrju/cellular-automaton.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'wintermute-cell/gitignore.nvim'
    use 'dstein64/vim-startuptime'
    use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', }}
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
    use { "catppuccin/nvim", as = "catppuccin" }
    use ( 'nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
    -- buttom line
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    -- top line
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }
    use {"folke/zen-mode.nvim"}
    use ({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim", }
    use { "folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons", config = function() require("trouble").setup { } end }
    use { 'brenoprata10/nvim-highlight-colors', config = function() require('nvim-highlight-colors').setup() end, }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} } }
    use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
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
end)
