local base16 = require 'base16'
base16(base16.themes['onedark'], true)

-- personal theme settings
local cmd = vim.cmd

cmd 'hi LineNr guibg=NONE'

cmd 'hi SignColumn guibg=NONE'
cmd 'hi VertSplit guibg=NONE guifg=#2a2e36'
cmd 'hi EndOfBuffer guifg=#1e222a'
cmd 'hi PmenuSel guibg=#98c379'

cmd 'hi Normal guibg=NONE ctermbg=NONE'

cmd 'hi Comment guifg=#6c717d'
