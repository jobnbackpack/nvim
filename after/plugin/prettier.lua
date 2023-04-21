vim.g.neofetch_try_node_exe = 1
vim.api.nvim_create_autocmd(
  {"BufWritePre"},
  { pattern = {"*.js","*.ts","*.scss","*.css","*.astro","*.svelte","*.jsx","*.tsx","*.json"}, command = "Neoformat"}
)

--, "InsertLeave", "TextChanged" are fun but also a bit buggy when you didn't complete a method or so

