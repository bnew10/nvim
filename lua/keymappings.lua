vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Use alt + hjkl to resize windows
vim.api.nvim_set_keymap('n', '<M-j>', '<cmd>resize -2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-k>', '<cmd>resize +2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-h>', '<cmd>vertical resize -2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-l>', '<cmd>vertical resize +2<CR>', {noremap = true, silent = true})

-- I hate escape more than anything else
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {noremap = true, silent = true})

-- Alternate way to save
vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>w<CR>', {noremap = true, silent = true})
-- Alternate way to quit
vim.api.nvim_set_keymap('n', '<C-Q>', '<cmd>wq!<CR>', {noremap = true, silent = true})

-- Better tabbing
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Better window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- More absolute way of doing o or O commands
vim.api.nvim_set_keymap('n', '<Leader>o', 'o<Esc>^Da', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>O', 'O<Esc>^Da', {noremap = true, silent = true})

-- Clear highlighted words
vim.api.nvim_set_keymap('n', '<Esc><Esc>', '<cmd>noh<CR>', {noremap = true, silent = true})

-- Remove all trailing whitespace by pressing F5
vim.api.nvim_set_keymap('n', '<F5>', '<cmd>let _s=@/<Bar>:%s/\\s\\+$//e<Bar>:let @/=_s<Bar><CR>', {noremap = true, silent = true})

-- Move up/down by display line (e.g., move up/down one line when a line wraps)
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = true})

-- Toggle tabs and EOL
vim.api.nvim_set_keymap('', '<Leader>l', '<cmd>set list!<CR>', {silent = true})
