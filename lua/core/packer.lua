-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.5',
		  -- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "EdenEast/nightfox.nvim"
  use {
		  'nvim-treesitter/nvim-treesitter',
		  run = function()
				  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				  ts_update()
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
		  'github/copilot.vim',
		  branch = 'release'
  }

  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

  use {
		  'nvim-lualine/lualine.nvim',
		  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
		  'nvim-tree/nvim-tree.lua',
		  requires = {
				  'nvim-tree/nvim-web-devicons', -- optional, for file icons
		  },
		  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use { 'alexghergh/nvim-tmux-navigation', config = function()

        local nvim_tmux_nav = require('nvim-tmux-navigation')

        nvim_tmux_nav.setup {
            disable_when_zoomed = true -- defaults to false
        }

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

    end
}
end)
