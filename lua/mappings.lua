require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n","<leader>df","<cmd>:DiffviewOpen<CR>",{desc="open file diff"})
map("n","<leader>dc","<cmd>:DiffviewClose<CR>",{desc="close file diff"})

map("n","<leader>lz","<cmd>:LazyGit<CR>",{desc="open lazygit"})
map("n","<leader>lg","<cmd>:LazyGitFilter",{desc="lazy git filter"})
