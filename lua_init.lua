vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2 

vim.api.nvim_command('set number')
vim.api.nvim_command('set relativenumber')

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ms-jpq/chadtree'
  use 'numToStr/FTerm.nvim'
  use {'akinsho/toggleterm.nvim', tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}
end)

-- OLD: Create needed "Shortcuts" for FTerm options
-- OLD: vim.api.nvim_create_user_command('FTERMToggle', require('FTerm').toggle, { bang = true })


---- Keybinds ---- 
-- FTerm --
vim.keymap.set('n', '<f2>', function()
  require('FTerm').toggle()
end)
vim.keymap.set('t', '<f2>', function()
  require('FTerm').toggle()
end)
-- ToggleTerm -- 
require("toggleterm").setup{
  open_mapping = [[<c-t>]]
}


-- Chadtree --
vim.keymap.set('n', '<c-f>', ':CHADopen <CR>', { silent = true })



-- Git -- 
vim.api.nvim_command('autocmd InsertLeave * :set relativenumber')
vim.api.nvim_command('autocmd InsertEnter * :set norelativenumber')

