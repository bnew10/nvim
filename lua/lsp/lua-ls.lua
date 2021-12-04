-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)

local os_dir
if OS == 'Linux' then
    os_dir = 'Linux'
elseif OS == 'OSX' then
    os_dir = 'macOS'
end

local sumneko_root_path = DATA_PATH .. "/lsp_servers/sumneko_lua/extension/server/bin/" .. os_dir
local sumneko_binary = sumneko_root_path .. "/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
   cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
   settings = {
       Lua = {
           runtime = {
               -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
               version = 'LuaJIT',
               -- Setup your lua path
               path = vim.split(package.path, ';')
           },
           diagnostics = {
               -- Get the language server to recognize the `vim` global
               globals = {'vim'}
           },
           workspace = {
               -- Make the server aware of Neovim runtime files
               library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
               maxPreload = 10000
           }
       }
   }
}
