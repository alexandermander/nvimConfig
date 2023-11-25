vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',

	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'tikhomirov/vim-glsl'
use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,}

  use 'OmniSharp/omnisharp-vim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use { 'ThePrimeagen/vim-be-good' }
  use {'jiangmiao/auto-pairs'}

  use { "catppuccin/nvim", as = "catppuccin" }
  use {"ThePrimeagen/harpoon"} 
use 'folke/tokyonight.nvim'
  use {'mbbill/undotree'}
-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

end)

