-- Default options
require('nightfox').setup({
  options = {
    transparent = true,     -- Disable setting background
  },
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
