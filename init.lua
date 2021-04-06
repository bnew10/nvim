-- plugins
vim.cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')
-- settings
vim.cmd('source $HOME/.config/nvim/general/settings.vim')
-- key mappings
vim.cmd('source $HOME/.config/nvim/general/mappings.vim')


-- PLUGIN SETTINGS
require('colorizer')

-- VIMSCRIPT SETTINGS
-- coc
vim.cmd('source $HOME/.config/nvim/vimscript/coc.vim')
-- quick-scope
vim.cmd('source $HOME/.config/nvim/vimscript/quick-scope.vim')
-- fzf
vim.cmd('source $HOME/.config/nvim/vimscript/fzf.vim')
-- zoomwintab
vim.cmd('source $HOME/.config/nvim/vimscript/zoomwintab.vim')
-- ctrlp
vim.cmd('source $HOME/.config/nvim/vimscript/ctrlp.vim')
-- vista
vim.cmd('source $HOME/.config/nvim/vimscript/vista.vim')
-- rainbow
vim.cmd('source $HOME/.config/nvim/vimscript/rainbow.vim')
-- vim-commentary
vim.cmd('source $HOME/.config/nvim/vimscript/commentary.vim')
-- start screen
vim.cmd('source $HOME/.config/nvim/vimscript/startify.vim')
-- ranger
vim.cmd('source $HOME/.config/nvim/vimscript/ranger.vim')
-- sneak
vim.cmd('source $HOME/.config/nvim/vimscript/sneak.vim')


-- THEMES onedark theme
vim.cmd('source $HOME/.config/nvim/themes/onedark.vim')
-- molokai theme
-- source $HOME/.config/nvim/themes/molokai.vim
-- airline theme
vim.cmd('source $HOME/.config/nvim/themes/airline.vim')
