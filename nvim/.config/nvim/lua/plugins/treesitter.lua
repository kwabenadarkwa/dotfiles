return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  commit = "3d0e642764f22d12c2496c27f132197f0ae96ccb",
  build = ":TSUpdate",
  event = { "BufNewFile", "BufReadPost" },
  ensure_installed = {
    "lua",
    "xml",
    "html",
    "http",
    "json",
    "graphql",
    "sql",
    "python",
    "go",
    "typescript",
    "javascript",
    "bash",
    "markdown_inline",
    "regex",
    "tsx",
    "css",
    "xaml",
    "axaml"
  },
  config = function()
    require("nvim-treesitter").setup({
      auto_install = true,
      highlight = {
        enable = true,
        disable = { "latex" },
        additional_vim_regex_highlighting = { "astro" },
      },
      indent = { enable = true },
    })
  end,
}
