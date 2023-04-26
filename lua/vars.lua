-- [[ vars.lua ]]

local g = vim.g
g.t_co = 256
g.background = "dark"

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

