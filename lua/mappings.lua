require("nvchad.mappings")
---@type MappingsTable

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>acru", "<cmd>:CompetiTest run<CR>", { desc = "CompetiTest Run" })
map("n", "<leader>acad", "<cmd>:CompetiTest add_testcase<CR>", { desc = "CompetiTest add testcase" })
map("n","<leader>acre","<cmd>:CompetiTest receive testcases<CR>",{desc="CompetiTest receive testcase"})
map("n","<leader>acrp","<cmd>:CompetiTest receive problem<CR>",{desc="CompetiTest receive problem"})
map("n","<leader>ace","<cmd>:CompetiTest edit_testcase<CR>",{desc="CompetiTest edit testcase"})
map("n","<leader>acd","<cmd>:CompetiTest delete_testcase",{desc="CompetiTest delete testcase"})

map("n","<leader>df","<cmd>:DiffviewOpen<CR>",{desc="open file diff"})
map("n","<leader>df","<cmd>:DiffviewClose<CR>",{desc="close file diff"})
map("n","<leader>cp","<cmd>:Copilot suggestion<CR>",{desc="github copilot"})

map("n","go","<cmd>symbolsoutline<cr>",{desc="outline"})
map("n","<C-]>","<cmd>:vertical resize -5<CR>")
map("n","<C-[>","<cmd>:vertical resize +5<CR>")
map("n","<leader>lz","<cmd>:LazyGit<CR>",{desc="open lazygit"})
map("n","<leader>lg","<cmd>:LazyGitFilter",{desc="lazy git filter"})

map("v",">",">gv")
