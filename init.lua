require('core.plugins')
require('core.plugin_config')
vim.diagnostic.config({
  virtual_text = true,  -- Inline error messages
  signs = true,         -- Gutter signs (like the red E)
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.cmd[[ :set number ]]

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
