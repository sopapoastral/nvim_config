return {
  cmd = { 'clangd', '--background-index' },
  root_marker = {
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git',
  },
  filetypes = { 'c', 'cpp', 'cuda', 'cc', 'cu' },
  settings = {
    single_file_support = true,
  },
}
