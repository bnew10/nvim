local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Better Syntax Support
  use 'sheerun/vim-polyglot'
  -- Auto pairs for '(' '[' '{'
  use 'jiangmiao/auto-pairs'
  -- Fuzzy finder
  use { 'junegunn/fzf', run = function() fn['fzf#install']() end }
  -- commenting shortcut
  use 'tpope/vim-commentary'
  -- highlight search matches while typing
  use 'PeterRincker/vim-searchlight'
  -- zoom window
  use 'troydm/zoomwintab.vim'
  -- quicker navigation left/right on a line
  use 'unblevable/quick-scope'
  -- Full path fuzzy file, buffer, mru, tag, ... finder
  use 'ctrlpvim/ctrlp.vim'
  -- simple function navigator for ctrlp.vim
  use 'tacahiroy/ctrlp-funky'
  -- return to previous file location upon reopening
  use 'farmergreg/vim-lastplace'
  -- sidebar showing file symbols/tags
  use 'liuchengxu/vista.vim'
  -- colorize parens, brackets, etc. based on nesting level
  use 'junegunn/rainbow_parentheses.vim'
  -- nice start screen
  use 'glepnir/dashboard-nvim'
  -- inline colorizer for color codes
  use 'norcalli/nvim-colorizer.lua'
  -- plugin for ranger integration
  use { 'kevinhwang91/rnvimr', run = 'make sync' }
  -- like quick-scope but for vertical cursor movement
  use 'justinmk/vim-sneak'
  -- shows added, modified, or removed lines for git
  use 'mhinz/vim-signify'
  -- highly extendable fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  -- icons (e.g., file icons in telescope)
  use 'kyazdani42/nvim-web-devicons'
  -- file explorer
  use 'kyazdani42/nvim-tree.lua'
  -- statusline
  use 'hoob3rt/lualine.nvim'
  -- common config for neovim lsp
  -- use 'neovim/nvim-lspconfig'


  -- ===== THEMES =====
  -- onedark theme
  use 'joshdick/onedark.vim'

end)
