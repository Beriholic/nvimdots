local map = LazyVim.safe_keymap_set
local vim_map = vim.keymap.set
vim_map("i", "jk", "<ESC>", { silent = true })

-- open file

-- buffers
map("n", "<tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- lazygit
map("n", "<leader>g", "<cmd>LazyGit<cr>", { desc = "lazygit" })
