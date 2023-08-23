return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      server = {
        tsserver = {
          keys = {
            { "<leader>co", false },
            { "<leader>cR", false },
          },
        },
      },
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
}
