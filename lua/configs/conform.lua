local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" }, -- Usa o ruff que instalaste no Mason
    c = { "clang-format" }, -- Usa o clang-format para C
    cpp = { "clang-format" }, -- Usa o clang-format para C++
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

return options
