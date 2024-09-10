local settings = {
  -- show relative line numbers
  number = true,
  relativenumber = true,

  colorcolumn = "80",

  -- use system clipboard
  clipboard = 'unnamed',

  -- don't wrap lines
  wrap = false,

  -- always show sign column
  signcolumn = 'yes',

  -- ignore case in search patterns
  ignorecase = true,
  smartcase = true,

  -- tab configs
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,

  -- show correct colors
  termguicolors = true,

  -- leave space between cursor and bottom + top of page
  scrolloff = 8,

  -- show X amount of items in popup menus
  pumheight = 8,
}

for k, v in pairs(settings) do
  vim.opt[k] = v
end
