-- -@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tt"] = { "<cmd> TroubleToggle <CR>", "Trouble" },
    ["<leader>fg"] = {
      function()
        local input_string = vim.fn.input "Search for > "
        if input_string == "" then
          return
        end
        require("telescope.builtin").grep_string {
          search = input_string,
        }
      end,
      "Search global",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.nvim_dap = {
  n = {
    ["<leader>dl"] = { "<cmd>lua require'dap'.step_into()<CR>", "debugger setp into" },
    ["<leader>dj"] = { "<cmd>lua require'dap'.step_over()<CR>", "debugger step over" },
    ["<leader>dk"] = { "<cmd>lua require'dap'.step_out()<CR>", "debugger step out" },
    ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<CR>", "debugger continue" },
    ["<leader>dbp"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "debugger toggle breakpoint" },
    ["<leader>dd"] = {
      "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      "debugger set conditional breakpoint",
    },
    ["<leader>de"] = { "<cmd>lua require'dap'.terminate()<CR>", "debugger reset" },
    ["<leader>dr"] = { "<cmd>lua require'dap'.run_last()<CR>", "debugger reset" },
  },
}

M.mason_nvim_dap = {
  n = {
    ["<leader>di"] = { "<cmd>Lazy load mason-nvim-dap.nvim<CR>", "Load debugger installer" },
  },
}

-- more keybinds!

return M
