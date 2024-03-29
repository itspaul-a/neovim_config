    
	-- ____   ____ _ __  __ / /( )_____   _____ ____   ____   / __/(_)____ _
   -- / __ \ / __ `// / / // / |// ___/  / ___// __ \ / __ \ / /_ / // __ `/
  -- / /_/ // /_/ // /_/ // /   (__  )  / /__ / /_/ // / / // __// // /_/ / 
 -- / .___/ \__,_/ \__,_//_/   /____/   \___/ \____//_/ /_//_/  /_/ \__, /  
-- /_/                                                             /____/   



-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'lervag/vimtex'
  use 'mg979/vim-visual-multi'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use 'm4xshen/autoclose.nvim'
  -- theme
  use { "ellisonleao/gruvbox.nvim" }
  use { "theprimeagen/harpoon"}
  use( 'hrsh7th/nvim-cmp')
  use( 'hrsh7th/cmp-nvim-lsp')
  use( 'L3MON4D3/LuaSnip')
  use( 'saadparwaiz1/cmp_luasnip')
  use( "mbbill/undotree")
  use( "tpope/vim-fugitive")
  use( 'rafamadriz/friendly-snippets')
  use( 'mattn/emmet-vim')
  -- treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use( 'vimwiki/vimwiki')
  use {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

end) 
