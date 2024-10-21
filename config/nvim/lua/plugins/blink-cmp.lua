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
    keymap = {
      show = '<C-space>',
      hide = '<C-e>',
      accept = { '<Cr>' },
      select_prev = { '<Up>', '<C-p>' },
      select_next = { '<Down>', '<C-n>' },
      show_documentation = '<C-space>',

      hide_documentation = '<C-space>',
      scroll_documentation_up = '<C-u>',
      scroll_documentation_down = '<C-d>',

      snippet_forward = '<Tab>',
      snippet_backward = '<S-Tab>',
    },
    accept = { auto_brackets = { enabled = true } },   -- experimental auto-brackets support
    trigger = { signature_help = { enabled = true } }, -- experimental signature help support
  }
}
