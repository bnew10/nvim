vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.wo.wrap = false -- Display long lines as just one line
vim.cmd('syntax enable') -- syntax highlighting
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- temp fix for indentline highlight issue
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set tabstop=4') -- Insert 4 spaces for a tab
vim.cmd('set shiftwidth=4') -- Change the number of space characters inserted for indentation
vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.number = true -- set numbered lines
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.cmd('set formatoptions-=cro') -- Stop newline continution of comments
vim.o.scrolloff = 3 -- At least n lines visible above/below cursor when scrolling
vim.o.backspace = "2" -- Backspace behaves normally
vim.o.ignorecase = true -- Ignore case in search patterns
vim.o.smartcase = true -- Override the 'ignorecase' option if the search pattern contains upper case characters
vim.o.showmatch = true -- When a bracket is inserted, briefly jump to the matching one
vim.o.listchars = "tab:▸ ,eol:¬" -- Visualize tabs and newlines
vim.o.inccommand = "split" -- Make substitution work in realtime
vim.cmd('set matchpairs+=<:>') -- Add < > pairs to % command