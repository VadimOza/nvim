return {
	--- Uncomment the two plugins below if you want to manage the language servers from neovim
	--- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
	{'williamboman/mason.nvim'},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			local lsp_zero = require('lsp-zero')
			lsp_zero.extend_lspconfig()

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({buffer = bufnr})
			end)

			require('mason').setup({})
			require('mason-lspconfig').setup({
				-- Replace the language servers listed here 
				-- with the ones you want to install
				ensure_installed = {'lua_ls', 'jdtls','kotlin_language_server','elixirls','bashls', 'rust_analyzer'},
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end 
	},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
}
