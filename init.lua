 --[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('plugins')
require('remap')
-- require('keys')      -- Keymaps
-- require('plug')      -- Plugins
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        }
    }
}
