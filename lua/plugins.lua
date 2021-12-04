local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Auto pairs for '(' '[' '{'
    use 'jiangmiao/auto-pairs'
    -- commenting shortcut
    use 'tpope/vim-commentary'
    -- highlight search matches while typing
    use 'PeterRincker/vim-searchlight'
    -- zoom window
    use 'troydm/zoomwintab.vim'
    -- quicker navigation left/right on a line
    use 'unblevable/quick-scope'
    -- return to previous file location upon reopening
    use 'farmergreg/vim-lastplace'
    -- sidebar showing file symbols/tags
    use 'liuchengxu/vista.vim'
    -- inline colorizer for color codes
    use 'norcalli/nvim-colorizer.lua'
    -- like quick-scope but for vertical cursor movement
    use 'justinmk/vim-sneak'
    -- shows added, modified, or removed lines for git (and other git features)
    use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}
    -- highly extendable fuzzy finder over lists
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}
    }
    -- icons (e.g., file icons in telescope)
    use 'kyazdani42/nvim-web-devicons'
    -- file explorer
    use 'kyazdani42/nvim-tree.lua'
    -- statusline
    use 'hoob3rt/lualine.nvim'
    -- common config for neovim lsp
    use 'neovim/nvim-lspconfig'
    -- auto-complete
    use 'hrsh7th/nvim-compe'
    -- easy lsp install
    use 'williamboman/nvim-lsp-installer'
    -- pictograms for lsp completion items
    use 'onsails/lspkind-nvim'
    -- bufferline
    use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- indent lines
    use 'lukas-reineke/indent-blankline.nvim'
    -- easier interface with tree-sitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- base16 theme tool
    use 'norcalli/nvim-base16.lua'
    -- highly performant UI for lsp functionality
    use 'glepnir/lspsaga.nvim'
    -- colorize parens, brackets, etc.
    use 'p00f/nvim-ts-rainbow'
    -- Debug Adapter Protocol
    use 'mfussenegger/nvim-dap'

end)
