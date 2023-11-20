---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>acru"] = { "<cmd>:CompetiTest run<CR>", "Competitest" },
    ["<leader>acad"] = { "<cmd>:CompetiTest add_testcase <CR>", "Competitest" },
    ["<leader>acre"] = { "<cmd>:CompetiTest receive testcases<CR>", "Competitest" },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
