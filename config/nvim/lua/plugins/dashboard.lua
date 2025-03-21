return {
  'nvimdev/dashboard-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  config = function()
    local day = os.date("%A")
    require('dashboard').setup {
      theme = "hyper",
      config = {
        -- special header used for fridays :)
        header = {
          [[                                                                   ]],
          [[                                                                   ]],
          [[            ███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗           ]],
          [[            ██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝  .~~~~.   ]],
          [[            █████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝   i====i_  ]],
          [[            ██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝    |cccc|_) ]],
          [[            ██║     ██║  ██║██║██████╔╝██║  ██║   ██║     |cccc|   ]],
          [[            ╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝     `-==-'   ]],
          [[                                                                   ]],
          os.date("%Y-%m-%d %X"),
          [[                                                                   ]],
        },
        mru = { limit = 8, label = 'Recent files in current working directory', cwd_only = true },
        week_header = {
          enable = day ~= "Friday"
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files ',
            key = 'f',
          },
          {
            desc = ' Apps',
            group = 'DiagnosticHint',
            action = 'Telescope app',
            key = 'a',
          },
          {
            desc = ' dotfiles',
            group = 'Number',
            action = 'cd ~/.dotfiles | Telescope find_files',
            key = '.',
          },
        },
      },
      -- color changes on fridays :)
      (day == "Friday") and vim.cmd [[ hi DashboardHeader guifg=#E5A47E]]
    }
  end,
}
