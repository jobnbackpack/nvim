require("obsidian").setup({
  dir = "~/Documents/Ultimate Starter Vault/",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  },
  disable_frontmatter = true,
  use_advanced_uri = true,
  daily_notes = {
    folder = "dailyNotes",
  }
})
