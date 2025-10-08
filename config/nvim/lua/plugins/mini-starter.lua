return {
  'echasnovski/mini.starter',
  version = '*',
  enabled = false,
  config = function()
    local starter = require('mini.starter')
    local is_friday = os.date("%A") == "Friday"
    starter.setup({
      header = is_friday and
          [[
███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗
██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝  .~~~~.
█████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝   i====i_
██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝    |cccc|_)
██║     ██║  ██║██║██████╔╝██║  ██║   ██║     |cccc|
╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝     `-==-'
          ]],
      evaluate_single = true,
      items = {
        starter.sections.sessions(5, true),
        starter.sections.recent_files(5, true, false),
        starter.sections.builtin_actions(),
      },
      footer = '',

      is_friday and (vim.cmd [[ hi MiniStarterHeader guifg=#E5A47E]])
    })
  end
}
