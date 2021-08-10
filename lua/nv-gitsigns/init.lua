require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▌', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▌', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  numhl = false,
  linehl = false,
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,
    ['n <Leader>gj'] = '<cmd>lua require"gitsigns".next_hunk()<CR>',
    ['n <Leader>gk'] = '<cmd>lua require"gitsigns".prev_hunk()<CR>',
    ['n <Leader>gb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',
	['n <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['n <leader>gu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>ge'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['n <leader>gp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
  },
  watch_index = {
    interval = 1000
  },
  update_debounce = 200
}

local cmd = vim.cmd

cmd('hi GitSignsAdd guifg='..O.green..' guibg=NONE')
cmd('hi GitSignsChange guifg='..O.yellow..' guibg=NONE')
cmd('hi GitSignsDelete guifg='..O.red..' guibg=NONE')
