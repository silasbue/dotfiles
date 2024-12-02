return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  branch = "v3.x",
  lazy = false,
  cmd = { "NeoTree" },
  keys = {
    { "<leader>e", mode = { "n" }, ":Neotree toggle reveal left<cr>", desc = "Open File Explorer" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    event_handlers = {
      {
        event = "file_open_requested",
        handler = function()
          require("neo-tree.command").execute({ action = "close" }) -- auto close neo-tree
        end
      },
    },
    window = {
      position = "float",
      mappings = {
        ["l"] = "open",
        ["s"] = "",
        ["h"] = "close_node",
      }
    }
  }
}
