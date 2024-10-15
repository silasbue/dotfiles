return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', "nvim-telescope/telescope-file-browser.nvim", } },
  keys = {
    { "<leader>ff", mode = { "n" }, function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<leader>fg", mode = { "n" }, function() require("telescope.builtin").live_grep() end,  desc = "Search in files" },
    { "<leader>fb", mode = { "n" }, function() require("telescope.builtin").buffers() end,    desc = "Find huffers" },
    { "<leader>fh", mode = { "n" }, function() require("telescope.builtin").help_tags() end,  desc = "Find help tags" },
    { "<leader>fe", mode = { "n" }, function() vim.cmd("Telescope file_browser") end,     desc = "Telescope file browser" }
  },
  cmd = { "Telescope" },
  config = function()
    local actions = require("telescope.actions")
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<c-h>"] = actions.which_key,
          }
        },
        prompt_prefix = " ",
        selection_caret = " ",
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
        },
      },
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
      },
    }
    require('telescope').load_extension('fzf') -- Use fzf
    require("telescope").load_extension("file_browser")

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
      TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
      TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
      TelescopeResultsTitle = { fg = colors.mantle },
      TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
    }

    for hl, col in pairs(TelescopeColor) do
      vim.api.nvim_set_hl(0, hl, col)
    end
  end
}
