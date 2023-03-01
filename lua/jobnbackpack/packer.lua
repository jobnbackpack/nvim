-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Theme && Design

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      --vim.cmd('colorscheme rose-pine')
    end
  })

  use 'ap/vim-css-color'

  use({
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd('colorscheme tokyonight-night')
    end
  })

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Lua
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

  use('itchyny/lightline.vim')

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('nvim-treesitter/playground')

  use { 'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup {}
  end
  }

  use { 'akinsho/org-bullets.nvim', config = function()
    require('org-bullets').setup()
  end }

  -- use {
  --   'lukas-reineke/headlines.nvim',
  --  config = function()
  --    require('headlines').setup()
  --  end,
  -- }

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use('epwalsh/obsidian.nvim')

  -- all lsp things
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }
end)
