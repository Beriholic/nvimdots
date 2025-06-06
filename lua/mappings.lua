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
map("n", "<leader>lz", "<cmd>lua Snacks.lazygit()<cr>", { desc = "Lazygit" })
map("n", "<leader>go", "<cmd>AerialToggle!<cr>", { desc = "Toggle code outline window" })
map("n", "<leader>tp", "<cmd>lua Snacks.scratch()<cr>", { desc = "Toggle Scratch Buffer" })
map("n", "<leader>.", "<cmd>lua Snacks.scratch.select() <cr>", { desc = "Select Scratch Buffer" })
map("n", "<leader>qf", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>ca", "<cmd>lua require('tiny-code-action').code_action()<cr>", { desc = "LSP CodeAction" })

-- vim.keymap.set("n", "<leader>ca", function()
-- 	require("tiny-code-action").code_action()
-- end, { noremap = true, silent = true })
--

-- map("n", "gd", "<cmd>lua snacks.picker.lsp_definitions() <cr>", { desc = "Goto Definition" })
-- map("n", "gD", "<cmd>lua snacks.picker.lsp_declarations() <cr>", { desc = "Goto Declaration" })
-- map("n", "gr", "<cmd>lua snacks.picker.lsp_references() <cr>", { nowait = true, desc = "References" })
-- map("n", "gI", "<cmd>lua snacks.picker.lsp_implementations() <cr>", { desc = "Goto Implementation" })
-- map("n", "gy", "<cmd>lua snacks.picker.lsp_type_definitions() <cr>", { desc = "Goto T[y]pe Definition" })

map("n", "<leader>t", function()
  require("menu").open "default"
end, {})
map({ "n", "v" }, "<RightMouse>", function()
  require("menu.utils").delete_old_menus()

  vim.cmd.exec '"normal! \\<RightMouse>"'

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end, {})
