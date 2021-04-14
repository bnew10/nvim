require('lualine').setup {
  options = { 
    theme = 'onedark',
    section_separators = '', 
    component_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = { 
      {'branch'}, 
      {'diff', color_added = '#2ecc71', color_modified = '#f1c40f', color_removed = '#e74c3c'  } 
    },
    lualine_c = {
      {'filename', full_path = true, shorten = true}
    },
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  }
}
