" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " commenting shortcut
    Plug 'tpope/vim-commentary'
    " airline
    Plug 'vim-airline/vim-airline'
    " highlight search matches while typing
    Plug 'PeterRincker/vim-searchlight'
    " zoom window
    Plug 'troydm/zoomwintab.vim'
    " Conquerer of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " add/delete/replace quotes, brackets, parens, etc.
    Plug 'machakann/vim-sandwich'
    " quicker navigation left/right on a line
    Plug 'unblevable/quick-scope'
    " Full path fuzzy file, buffer, mru, tag, ... finder
    Plug 'ctrlpvim/ctrlp.vim'
    " simple function navigator for ctrlp.vim
    Plug 'tacahiroy/ctrlp-funky'
    " return to previous file location upon reopening
    Plug 'farmergreg/vim-lastplace'
    " sidebar showing file symbols/tags
    Plug 'liuchengxu/vista.vim'
    " colorize parens, brackets, etc. based on nesting level
    Plug 'junegunn/rainbow_parentheses.vim'
    " nice start screen
    Plug 'mhinz/vim-startify'
    " inline colorizer for color codes
    Plug 'norcalli/nvim-colorizer.lua'


    " ===== THEMES =====
    " onedark theme
    Plug 'joshdick/onedark.vim'
    " molokai theme
    Plug 'tomasr/molokai'
    " airline theme
    Plug 'vim-airline/vim-airline-themes'

call plug#end()
