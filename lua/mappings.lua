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
map("n", "gh", "vim.lsp.buf.hover()")

-- show error
--
map("n", "gl", "lua vim.diagnostic.open_float()")
