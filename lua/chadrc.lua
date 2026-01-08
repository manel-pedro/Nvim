-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = true,
  hl_override = {
    WinSeparator = { fg = "#56b6a2", bg = "NONE" },
    -- Garante que a borda ativa se destaca
    VertSplit = { fg = "#e5c07b", italic = true, bold = true },
    -- Linha de status da janela inativa (mais escura)
    StatusLineNC = { bg = "#101216", fg = "#3e4452" },
    ["@comment"] = { fg = "#e5c07b", italic = true },
    Comment = { fg = "#e5c07b", italic = true },
  },
}
-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
