return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.setup({})

    local ts_language = vim.treesitter.language
    if ts_language and ts_language.ft_to_lang == nil then
      ts_language.ft_to_lang = ts_language.get_lang
    end

    package.loaded["nvim-treesitter.parsers"] = vim.tbl_extend("force",
      package.loaded["nvim-treesitter.parsers"] or {},
      {
        ft_to_lang = ts_language.get_lang,
        get_parser = vim.treesitter.get_parser,
      }
    )

    package.loaded["nvim-treesitter.configs"] = vim.tbl_extend("force",
      package.loaded["nvim-treesitter.configs"] or {},
      {
        get_module = function(name)
          if name == "highlight" then
            return {
              additional_vim_regex_highlighting = false,
            }
          end

          return {}
        end,
        is_enabled = function(name, lang, bufnr)
          if name ~= "highlight" then
            return false
          end

          return pcall(vim.treesitter.get_parser, bufnr, lang)
        end,
      }
    )

    local function attach(bufnr)
      local filetype = vim.bo[bufnr].filetype
      if filetype == "" then
        return
      end

      if filetype == "astro" then
        vim.bo[bufnr].syntax = "ON"
      end

      local ok, lang = pcall(ts_language.get_lang, filetype)
      if not ok or not lang then
        return
      end

      if not pcall(vim.treesitter.get_parser, bufnr, lang) then
        return
      end

      pcall(vim.treesitter.start, bufnr, lang)
      vim.bo[bufnr].indentexpr =
        "v:lua.require'nvim-treesitter'.indentexpr()"
    end

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        attach(args.buf)
      end,
    })

    vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
      callback = function(args)
        attach(args.buf)
      end,
    })
  end,
}
