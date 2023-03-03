require("obsidian").setup({
  dir = "~/OneDrive - conet.de/Documents/Obsidian/My Home/",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  },
  disable_frontmatter = true,
  use_advanced_uri = true,
  daily_notes = {
    folder = "dailyNotes",
  }
})
