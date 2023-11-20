---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>acru"] = { "<cmd>:CompetiTest run<CR>", "Competitest" },
    ["<leader>acad"] = { "<cmd>:CompetiTest add_testcase <CR>", "Competitest" },
    ["<leader>acre"] = { "<cmd>:CompetiTest receive testcases<CR>", "Competitest" },
    ["<leader>w"]={"<cmd>:HopWord<CR>","Hop"},
    ["<leader>j"]={"<cmd>:HopLineStart<CR>","Hop"},
    ["<leader>k"]={"<cmd>:HopLine<CR>","Hop"},
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
