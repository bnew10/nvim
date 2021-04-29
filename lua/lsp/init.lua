vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'ca', '<cmd>Lspsaga code_action<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'R', '<cmd>Lspsaga rename<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>Lspsaga signature_help<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>Lspsaga diagnostic_jump_next<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Lspsaga diagnostic_jump_prev<CR>', {noremap = true, silent = true})
-- scroll down hover doc or scroll in definition preview
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', {noremap = true, silent = true})
-- scroll up hover doc
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', {noremap = true, silent = true})
-- terminal
vim.api.nvim_set_keymap('n', '<A-d>', '<cmd>Lspsaga open_floaterm<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<A-d>', '<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>', {noremap = true, silent = true})

-- show diagnostic when hovering over text
vim.cmd('autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()')
vim.cmd('autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()')
