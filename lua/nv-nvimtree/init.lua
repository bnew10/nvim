vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = '✗',
        staged = '✓',
        unmerged = '',
        renamed = '➜',
        untracked = ''
    },
    folder = {
        default = '',
        open = '',
        empty = '',
        empty_open = '',
        symlink = ''
    }
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup {
	update_focused_file = {
		enable = true,
		update_cwd = true
	},
    actions = {
        open_file = {
            quit_on_open = true,
            resize_window = true
        },
    },
    renderer = {
        indent_markers = {
            enable = true
        }
    },
	view = {
		auto_resize = true,
		mappings = {
			custom_only = true,
			list = {
				{ key = 'g',     cb = tree_cb('cd') },
				{ key = 'l',     cb = tree_cb('edit') },
				{ key = '<CR>',  cb = tree_cb('edit') },
				{ key = '<BS>',  cb = tree_cb('close_node') },
				{ key = '<Tab>', cb = tree_cb('preview') },
				{ key = 'R',     cb = tree_cb('refresh') },
				{ key = 'a',     cb = tree_cb('create') },
				{ key = "c",     cb = tree_cb("copy") },
				{ key = "p",     cb = tree_cb("paste") },
				{ key = 'd',     cb = tree_cb('remove') },
				{ key = 'r',     cb = tree_cb('rename') },
				{ key = '-',     cb = tree_cb('dir_up') },
				{ key = 'P',     cb = tree_cb('parent_node') },
				{ key = 'q',     cb = tree_cb('close') },
				{ key = 'v',     cb = tree_cb('vsplit') },
				{ key = 'x',     cb = tree_cb('split') },
			}
		}
	}
}
