return {
  'echasnovski/mini.surround',
  version = '*',
  opts = {
    mappings = {
      add = 'ys',             -- Add surrounding in Normal and Visual modes
      delete = 'ds',          -- Delete surrounding
      -- find = 'fs',            -- Find surrounding (to the right)
      -- find_left = 'Fs',       -- Find surrounding (to the left)
      highlight = 'ysh',      -- Highlight surrounding
      replace = 'cs',         -- Replace surrounding
      update_n_lines = 'ysn', -- Update `n_lines`

      suffix_last = 'l',      -- Suffix to search with "prev" method
      suffix_next = 'n',      -- Suffix to search with "next" method
    }
  },
  keys = {
    'ys', 'ds', 'fs', 'Fs', 'ysh', 'cs', 'ysn'
  }
}
