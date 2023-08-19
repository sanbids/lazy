local whichkey = require("which-key")

whichkey.register({
  w = { "<cmd>wa<CR>", "Save" },
  q = { "<cmd>q!<CR>", "Quits" },
  c = {
    function()
      require("mini.bufremove").delete(0, false)
    end,
    "Close Buffer",
  },
  b = {
    n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
  },

  r = {
    name = "code run",
    r = { "<cmd>RunCode<cr>", "Run Code" },
    f = { "<cmd>RunFiles<cr>", "Run File" },
    c = { "<cmd>RunClose<cr>", "Run Close" },
  },
  l = {
    name = "LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
    w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    f = { "<cmd>lua require('lvim.lsp.utils').format()<cr>", "Format" },
    i = { "<cmd>LspInfo<cr>", "Info" },
    I = { "<cmd>Mason<cr>", "Mason Info" },
    j = {
      "<cmd>lua vim.diagnostic.goto_next()<cr>",
      "Next Diagnostic",
    },
  },

  p = {
    name = "Plugins",
    i = { "<cmd>Lazy install<cr>", "Install" },
    s = { "<cmd>Lazy sync<cr>", "Sync" },
    S = { "<cmd>Lazy clear<cr>", "Status" },
    c = { "<cmd>Lazy clean<cr>", "Clean" },
    u = { "<cmd>Lazy update<cr>", "Update" },
    p = { "<cmd>Lazy profile<cr>", "Profile" },
    l = { "<cmd>Lazy log<cr>", "Log" },
    d = { "<cmd>Lazy debug<cr>", "Debug" },
  },
  g = {
    name = "Git",
    g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
    j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
    k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk",
    },
    o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
    C = {
      "<cmd>Telescope git_bcommits<cr>",
      "Checkout commit(for current file)",
    },
    d = {
      "<cmd>Gitsigns diffthis HEAD<cr>",
      "Git Diff",
    },
  },
}, { prefix = "<leader>" })
