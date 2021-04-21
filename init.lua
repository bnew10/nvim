require('plugins')
require('nv-globals')
vim.cmd('source $HOME/.config/nvim/general/settings.vim') -- settings
vim.cmd('source $HOME/.config/nvim/general/mappings.vim') -- key mappings


-- PLUGIN SETTINGS
require('nv-lualine') -- statusline
require('nv-dashboard') -- start screen
require('nv-telescope') -- fuzzy finder interface
require('nv-colorizer') -- adds bg color to color codes (e.g., #1ce454)
require('nv-nvimtree') -- file explorer
require('nv-compe') -- auto-complete
require('nv-lspkind') -- auto-complete pictograms
require('nv-barbar') -- bufferline
require('nv-indentline') -- indent lines

-- LSP
require('lsp')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.clangd-ls')
require('lsp.vim-ls')


-- VIMSCRIPT SETTINGS
-- quick-scope
vim.cmd('source $HOME/.config/nvim/vimscript/quick-scope.vim')
-- zoomwintab
vim.cmd('source $HOME/.config/nvim/vimscript/zoomwintab.vim')
-- vista
vim.cmd('source $HOME/.config/nvim/vimscript/vista.vim')
-- rainbow
vim.cmd('source $HOME/.config/nvim/vimscript/rainbow.vim')
-- vim-commentary
vim.cmd('source $HOME/.config/nvim/vimscript/commentary.vim')
-- sneak
vim.cmd('source $HOME/.config/nvim/vimscript/sneak.vim')
-- signify
vim.cmd('source $HOME/.config/nvim/vimscript/signify.vim')


-- THEMES
-- onedark theme
vim.cmd('source $HOME/.config/nvim/themes/onedark.vim')
-- personal settings
vim.cmd('source $HOME/.config/nvim/themes/settings.vim')
