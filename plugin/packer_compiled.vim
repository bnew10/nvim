" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/bnew10/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bnew10/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bnew10/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bnew10/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bnew10/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["ctrlp-funky"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/ctrlp-funky"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/ctrlp.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/fzf"
  },
  molokai = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/molokai"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["rainbow_parentheses.vim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/rainbow_parentheses.vim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-lastplace"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-searchlight"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-searchlight"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["zoomwintab.vim"] = {
    loaded = true,
    path = "/home/bnew10/.local/share/nvim/site/pack/packer/start/zoomwintab.vim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
