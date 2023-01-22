local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer no instalado")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "L3MON4D3/LuaSnip"
  use {
    "ellisonleao/gruvbox.nvim",
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use "norcalli/nvim-colorizer.lua"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'neovim/nvim-lspconfig' -- Contiene la configuración de varios lenguajes
  use 'onsails/lspkind-nvim' -- Autocompletado
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use "windwp/nvim-ts-autotag"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-lua/plenary.nvim"
  use "akinsho/nvim-bufferline.lua"
  use "glepnir/lspsaga.nvim"
  use "lewis6991/gitsigns.nvim"
  use "mattn/emmet-vim"
end)
