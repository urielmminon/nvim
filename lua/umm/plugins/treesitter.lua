local status, treesitter = pcall(require, "nvim-treesitter.configs") 
if not status then
  return
end


treesitter.setup({
  highlight = {
    enable = true
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
    "cmake",
    "comment",
    "gitattributes",
    "java",
    "julia",
    "latex",
    "make",
    "python",
    "regex",
    "r",
    "rust",
    "scala",
    "scheme",
    "sql",
    "vim",
  },
  auto_install = true
})
