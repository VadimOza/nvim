-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
-- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
  update_cwd          = true,
  open_on_setup = true,
  view = {
    width = 30,
	float = {
			enable = true,
			quit_on_focus_loss = true,
	},
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

