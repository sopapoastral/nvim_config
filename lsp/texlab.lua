return {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'plaintext', 'bib' },
  root_marker = { '.git', '.latexmkrc', '.texlabroot', 'texlabroot', 'Tectonic.toml' },
  settings = {
    texlab = {
      auxDirectory = '.',
      bibtexFormatter = 'texlab',
      build = {
        args = { '-pdf', '-interaction=nonstopmode', '-synctex=1', '%f' },
        executable = 'latexmk',
        forwardSearchAfter = false,
        onSave = false,
      },
      chktex = {
        onEdit = false,
        onOpenAndSave = false,
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        args = {},
      },
      latexFormatter = 'latexindent',
      latexindent = {
        modifyLineBreaks = false,
      },
    },
  },
}
