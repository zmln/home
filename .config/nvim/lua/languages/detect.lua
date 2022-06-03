vim.api.nvim_create_autocmd(
  "FileType",
  {
    pattern = { "go" },
    command = [[lua require("languages/go")]]
  }
)
