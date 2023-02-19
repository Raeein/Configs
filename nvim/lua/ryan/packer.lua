vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use 'ThePrimeagen/vim-be-good'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } 
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use ( 'nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  -- use 'folke/tokyonight.nvim'
end)
