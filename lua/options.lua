require "nvchad.options"

-- add yours here!
vim.opt.autochdir = true

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})

-- nvim-tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- options.lua
local nvim_tree_config = require("configs.nvim-tree")
nvim_tree_config.setup()


-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
