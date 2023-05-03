---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<Leader>Lc"] = { "<cmd>e ~/.config/nvim/.<CR>", "Open nvim config" },

    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
    ["<Leader>gs"] = { "<Cmd>ClangdSwitchSourceHeader<CR>", "Switch header/source" },
    ["gcc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
    ["<C-Tab>"] = { "gt" },
    -- LSP saga
    ["gp"] = { "<Cmd>Lspsaga peek_definition<CR>", "Peek definition" },
    ["<F2>"] = { "<Cmd>Lspsaga rename<CR>", "Lsp Rename" },
    ["gi"] = { "<Cmd>Lspsaga lsp_finder<CR>", "Lps finder" },
    ["g."] = { "<Cmd>Lspsaga code_action<CR>", "Code action" },
    ["<Leader>fs"] = { "<Cmd>Telescope lsp_document_symbols<CR>", "Find document symbols" },
    ["<F6>"] = { "<Cmd>lua require'dapui'.toggle()<CR>", "dap ui toggle" },
    ["<F5>"] = { "<Cmd>lua require'dap'.continue()<CR>", "dap run" },
    ["<F8>"] = { "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", "dap breakpoint toggle " },
    ["<F10>"] = { "<Cmd>DapStepInto<CR>", "dap setp into"},
    ["<F9>"] = { "<Cmd>DapStepOver<CR>", "dap setp over"}
  },
  t = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  v = {
    ["gc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

-- more keybinds!

return M
