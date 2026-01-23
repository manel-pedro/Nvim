return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  { "ThePrimeagen/vim-be-good", cmd = "VimBeGood", lazy = false },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "pyright",
        "ruff", -- Linter rápido que recomendamos

        -- CSS / HTML
        "prettier",

        -- C / C++
        "clangd",
        "clang-format",

        -- Debugger (opcional mas útil)
        "codelldb",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "c",
        "cpp",
        "json",
        "c_sharp",
        "dockerfile",
        "dart",
        "cmake",
        "gitcommit",
        "gitignore",
        "php",
        "regex",
        "sql",
        "xml",
        "yaml",
        "prolog",
      },
      auto_install = true,
    },
  },
}
