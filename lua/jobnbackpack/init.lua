require("jobnbackpack.remap")
require("jobnbackpack.set")

vim.g.lightline = {
  colorscheme = 'one',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'FugitiveHead' },
}

require('orgmode').setup_ts_grammar()
