require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n", "<leader>df", "<cmd>:DiffviewOpen<CR>", { desc = "open file diff" })
map("n", "<leader>dc", "<cmd>:DiffviewClose<CR>", { desc = "close file diff" })
map("n", "<leader>z", "<cmd>lua Snacks.zen()<cr>", { desc = "Toggle Zen Mode" })
map("n", "<leader>n", "<cmd>lua Snacks.notifier.show_history()<cr>", { desc = "Notification History" })
map("n", "<leader>gf", "<cmd>lua Snacks.lazygit.log_file()<cr>", { desc = "Lazygit Current File History" })
map("n", "<leader>un", "<cmd>lua Snacks.notifier.hide()<cr>", { desc = "Dismiss All Notifications" })
map("n", "<leader>gg", "<cmd>lua Snacks.lazygit()<cr>", { desc = "Lazygit" })
