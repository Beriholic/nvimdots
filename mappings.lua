---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>acru"] = { "<cmd>:CompetiTest run<CR>", "Competitest run" },
    ["<leader>acad"] = { "<cmd>:CompetiTest add_testcase <CR>", "Competitest add testcase" },
    ["<leader>acre"] = { "<cmd>:CompetiTest receive testcases<CR>", "Competitest receive testcases" },
    ["<leader>ace"] = { "<cmd>:CompetiTest edit_testcase <CR>", "Competitest edit testcases" },
    ["<leader>acd"] = { "<cmd>:CompetiTest delete_testcase <CR>", "Competitest delete_testcase" },

    ["<leader>df"] = { "<cmd>:DiffviewOpen <CR>", "open diff" },
    ["<leader>dc"] = { "<cmd>:DiffviewClose <CR>", "close diff" },

    ["go"] = { "<cmd>SymbolsOutline<CR>", "outline" },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
