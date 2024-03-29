require('plugins')
require('nv-globals')
require('settings')
require('keymappings')
require('colorscheme')


-- PLUGIN SETTINGS
require('nv-lualine') -- statusline
require('nv-telescope') -- fuzzy finder interface
require('nv-colorizer') -- adds bg color to color codes (e.g., #1ce454)
require('nv-nvimtree') -- file explorer
require('nv-compe') -- auto-complete
require('nv-lspkind') -- auto-complete pictograms
require('nv-barbar') -- bufferline
require('nv-indentline') -- indent lines
require('nv-treesitter') -- easier interface for neovim builtin tree-sitter
require('nv-gitsigns') -- signs for added/removed/changed lines and other git features
require('nv-rainbow') -- colorize parens, brackets, etc.

-- LSP
require('lsp')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.clangd-ls')
require('lsp.vim-ls')
require('lsp.jdtls-ls')

-- DEBUG
require('debugger')
require('debugger.adapters')
require('debugger.cpp')


-- VIMSCRIPT SETTINGS
-- quick-scope
vim.cmd('source $HOME/.config/nvim/vimscript/quick-scope.vim')
-- zoomwintab
vim.cmd('source $HOME/.config/nvim/vimscript/zoomwintab.vim')
-- vista
vim.cmd('source $HOME/.config/nvim/vimscript/vista.vim')
-- vim-commentary
vim.cmd('source $HOME/.config/nvim/vimscript/commentary.vim')
-- sneak
vim.cmd('source $HOME/.config/nvim/vimscript/sneak.vim')
