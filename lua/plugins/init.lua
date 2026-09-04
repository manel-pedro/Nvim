return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "folke/which-key.nvim",
    enabled = true,
    lazy = false,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    -- Un-commented the nvim-web-devicons line because that's what NvChad uses
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },

    cmd = { "RenderMarkdown", "RenderMarkdownToggle" },
    ft = { "markdown" },
    event = { "BufReadPost", "BufNewFile" },

    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      present = "obsidian",
    },
  },
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

        "codelldb",
        "rust-analyzer",
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
        "java",
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
