return { -- Autoformat
  'stevearc/conform.nvim',
  cmd = { 'ConformInfo' },
  keys = {
    {
      -- Keymap
      '<leader>ff',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = 'Format Buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = { false },
    formatters_by_ft = {
      lua = { 'stylua' },
      c = { 'clang-format' },
      html = { 'prettier' },
      css = { 'prettier' },
      javascript = { 'prettier' },
    },
  },
}
