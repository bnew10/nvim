-- toggle_breakpoint
vim.api.nvim_set_keymap('n', '<Leader>tb', ":lua require'dap'.toggle_breakpoint()<CR>", {noremap = true, silent = false})
-- launch debug session or resume execution
vim.api.nvim_set_keymap('n', '<Leader>c', ":lua require'dap'.continue()<CR>", {noremap = true, silent = false})
-- step over
vim.api.nvim_set_keymap('n', '<Leader>so', ":lua require'dap'.step_over()<CR>", {noremap = true, silent = false})
-- step in
vim.api.nvim_set_keymap('n', '<Leader>so', ":lua require'dap'.step_in()<CR>", {noremap = true, silent = false})
-- open repl (i.e., inspect state)
vim.api.nvim_set_keymap('n', '<Leader>so', ":lua require'dap'.repl.open()<CR>", {noremap = true, silent = false})
