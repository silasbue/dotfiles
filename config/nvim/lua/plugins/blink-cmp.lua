return {
  'saghen/blink.cmp',
  event = { "BufRead", "BufNewFile" },
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      use_nvim_cmp_as_default = true,
    },
    completion = {
      documentation = { auto_show = true },
      list = {
        selection = {
          preselect = true,
          auto_insert = false
        }
      },
    },
    keymap = {
      preset = 'super-tab',
      -- ['<tab>'] = { 'select_next', 'fallback' },
      -- ['<s-tab>'] = { 'select_prev', 'fallback' },
    },
    signature = { enabled = true }
  },
  opts_extend = { "sources.default" }
}
