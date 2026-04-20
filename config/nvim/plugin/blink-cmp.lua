require('blink.cmp').setup({
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
    },
    signature = { enabled = true }
})

