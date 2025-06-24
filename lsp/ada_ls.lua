return {
  cmd = { 'ada_language_server' },
  root_markers = {
    '*.adc',
    'alire.toml',
    '.git',
    '*.gpr',
    'Makefile',
  },
  filetypes = { 'ada' },
  -- settings = {
  --   ada = {
  --     projectFile = 'project.gpr',
  --     scenarioVariables = { ... },
  --   },
  -- },
}
