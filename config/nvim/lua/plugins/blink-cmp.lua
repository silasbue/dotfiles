return {
  'saghen/blink.cmp',
  event = "BufRead",
  dependencies = 'rafamadriz/friendly-snippets',
  version = 'v0.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    highlight = {
      use_nvim_cmp_as_default = true,
    },
    keymap = { preset = 'super-tab' },
    accept = { auto_brackets = { enabled = true } },   -- experimental auto-brackets support
    trigger = { signature_help = { enabled = true } }, -- experimental signature help support
  }
}
