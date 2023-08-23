local cmp = require("cmp")
cmp.setup({
  completion = {
    keyword_length = 4,
    max_item_count = 6,
    -- keyword_pattern = ".*",
  },
  sources = {
    { name = "nvim_lsp", keyword_length = 3, max_item_count = 6 },
    { name = "luasnip", keyword_length = 2, max_item_count = 6 },
    { name = "buffer", keyword_length = 2, max_item_count = 6 },
  },
})
