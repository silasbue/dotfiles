return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim' } },
  keys = {
    { "<leader>z", mode = { "n" }, function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<leader>g", mode = { "n" }, function() require("telescope.builtin").live_grep() end,  desc = "Search in files" },
    { "<leader>b", mode = { "n" }, function() require("telescope.builtin").buffers() end,    desc = "Find huffers" },
    { "<leader>h", mode = { "n" }, function() require("telescope.builtin").help_tags() end,  desc = "Find help tags" },
  },
  cmd = { "Telescope" },
  config = function()
    local actions = require("telescope.actions")
    require('telescope').setup {
      defaults = {
        path_display = { "filename_first" },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<c-h>"] = actions.which_key,
          }
        },
        prompt_prefix = " ",
        selection_caret = " ",
        layout_strategy = "flex",
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
          vertical = { mirror = true },
        },
      },
    }
    require('telescope').load_extension('fzf') -- Use fzf

    -- Telescope styling
    local colors = require("catppuccin.palettes").get_palette()
    local TelescopeColor = {
      TelescopeMatching = { fg = colors.flamingo },
      TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },
      TelescopePromptPrefix = { bg = colors.surface0 },
      TelescopePromptNormal = { bg = colors.surface0 },
      TelescopeResultsNormal = { bg = colors.mantle },
      TelescopePreviewNormal = { bg = colors.mantle },
      TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
      TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
      TelescopePreviewBorder = { bg = colors.mantle, fg = colors.green }, -- change fg to mantle to hide border completely
      TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
      TelescopeResultsTitle = { fg = colors.mantle },
      TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
    }

    for hl, col in pairs(TelescopeColor) do
      vim.api.nvim_set_hl(0, hl, col)
    end
  end
}
