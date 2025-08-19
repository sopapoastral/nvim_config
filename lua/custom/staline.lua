return {
  'tamton-aquib/staline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  config = function()
    require('staline').setup {
      sections = {
        left = {
          '  ',
          'mode',
          ' ',
          'branch', --[[ ' ', 'cwd', ]]
          ' ',
          'lsp_name',
          ' ',
          'lsp',
        },
        mid = { 'cool_symbol' },
        right = { 'cwd', ' ', 'file_name', 'line_column' },
      },
      mode_colors = {
        i = '#f6c177',
        n = '#31748f',
        c = '#8fbf7f',
        v = '#ebbcba',
      },
      defaults = {
        bg = '#191724',
        fg = '#e0def4',
        true_colors = true,
        line_column = '[%l/%L]:%c',

        branch_symbol = ' ',
        mod_symbol = '  ',
      },
      lsp_symbols = {
        Error = ' ',
        Info = ' ',
        Warn = ' ',
        Hint = '',
      },
      mode_icons = {
        ['n'] = '󰋜 ',
        ['no'] = '󰋜 ',
        ['niI'] = '󰋜 ',
        ['niR'] = '󰋜 ',
        ['no'] = '󰋜 ',
        ['niV'] = '󰋜 ',
        ['nov'] = '󰋜 ',
        ['noV'] = '󰋜 ',
        ['i'] = '󱦹 ',
        ['ic'] = '󱦹 ',
        ['ix'] = '󱦹 ',
        ['s'] = '󰩭 ',
        ['S'] = '󰩭 ',
        ['v'] = ' ',
        ['V'] = ' ',
        [''] = ' ',
        ['r'] = ' ',
        ['r?'] = ' ',
        ['c'] = ' ',
        ['t'] = ' ',
        ['!'] = ' ',
        ['R'] = ' ',
      },
    }
  end,
}
