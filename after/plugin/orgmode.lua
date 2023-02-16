vim.opt.shellslash = true

require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org/*'},
  org_default_notes_file = '~/Dropbox/org/refile.org',
  org_archive_location = '~/Dropbox/org/archive.org',
  org_todo_keywords = {'TODO', 'WAITING', '|', 'DONE', 'CANCELLED'},
  org_todo_keyword_faces = {
    WAITING = ':foreground #537FE7 :weight bold',
    CANCELLED = ':background #FFFFFF :slant italic :underline on',
  },
})

require('orgmode').setup_ts_grammar()

vim.api.nvim_set_hl(0, 'OrgAgendaScheduled', { fg='White' })
