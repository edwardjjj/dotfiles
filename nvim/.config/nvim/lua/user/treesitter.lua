local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "tsx",
    "typescript",
    "css",
    "rust",
    "java",
    "yaml",
    "markdown",
  },
  ignore_install = { "haskell" },
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml", "python" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    extended_mdoe = true,
    max_file_lines = nil,
  },
}
