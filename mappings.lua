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
    ["<leader>w"]={"<cmd>:HopWord<CR>","Hop word"},
    ["<leader>j"]={"<cmd>:HopLineStart<CR>","Hop LineStart"},
    ["<leader>k"]={"<cmd>:HopLine<CR>","Hop Line"},
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
