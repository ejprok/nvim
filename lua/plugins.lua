-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
    -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

  use({ 'rose-pine/neovim', as = 'rose-pine' })


  vim.cmd('colorscheme rose-pine')

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
