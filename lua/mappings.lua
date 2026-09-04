require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-S-Up>", "<cmd>resize +5<cr>", { desc = "Resize Window Up" })
map("n", "<C-S-Down>", "<cmd>resize -5<cr>", { desc = "Resize Window Down" })
map("n", "<C-S-Left>", "<cmd>vertical resize -5<cr>", { desc = "Resize Window Left" })
map("n", "<C-S-Right>", "<cmd>vertical resize +5<cr>", { desc = "Resize Window Right" })
map("n", "<A-Down>", "<cmd>m .+1<cr>==gl", { desc = "Move line down" })
map("n", "<A-Up>", "<cmd>m .-2<cr>==gl", { desc = "Move line up" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--show info of the thing i am hovering
map("n", "gh", vim.lsp.buf.hover, { desc = "LSP show documentation of hovering" })

-- show error
--
map("n", "gl", vim.diagnostic.open_float, { desc = "LSP show line diagnostic" })

-- do sugested fix
map("n", "g.", vim.lsp.buf.code_action, { desc = "LSP do the code_action" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    map("n", "gp", "<cmd>RenderMarkdown preview<cr>", {
      buffer = true, -- Crucial: deletes this mapping when switching away from a markdown file
      silent = true,
      desc = "Markdown Split Preview",
    })
  end,
})
