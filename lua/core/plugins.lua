local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use "folke/tokyonight.nvim"
  use 'windwp/nvim-autopairs'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'ekalinin/Dockerfile.vim'
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason.nvim"
  --use('jose-elias-alvarez/null-ls.nvim')
  use "nvimtools/none-ls.nvim"
  use('MunifTanjim/prettier.nvim')
  use 'lewis6991/gitsigns.nvim'
  use 'hashivim/vim-terraform'
  use 'juliosueiras/vim-terraform-completion'
  use 'windwp/nvim-ts-autotag'
  use 'RRethy/vim-illuminate'
  use "williamboman/mason-lspconfig.nvim"
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "nvim-lua/plenary.nvim"
  use 'rafamadriz/friendly-snippets'
  use 'sharkdp/fd'
  use "mfussenegger/nvim-jdtls"
  use {
	  "linux-cultist/venv-selector.nvim",
	  requires = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
      "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim",
		},
	  config = true,
	  lazy = false,
	  branch = "regexp",
	 -- event = "VeryLazy",
  }
  use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}
  use 'nvim-telescope/telescope.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
