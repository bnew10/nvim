require('lualine').setup {
  options = {
    theme = 'onedark',
    section_separators = {'', ''},
    component_separators = ''
  },
  sections = {
    lualine_a = {},
    lualine_b = {
      {'branch'},
      {'diff', color_added = O.green, color_modified = O.yellow, color_removed = O.red}
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
