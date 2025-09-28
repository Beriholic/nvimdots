local map = LazyVim.safe_keymap_set
local vim_map = vim.keymap.set
vim_map("i", "jk", "<ESC>", { silent = true })

-- open file

-- buffers
map("n", "<tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- git
map("n", "<leader>g", function()
  Snacks.lazygit()
end, { desc = "lazygit" })

map("n", "<leader>df", "<cmd>:DiffviewOpen<CR>", { desc = "open file diff" })
map("n", "<leader>dc", "<cmd>:DiffviewClose<CR>", { desc = "close file diff" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
