return {
  -- trying gruvbox-material to match wezterm's 'Gruvbox Material (Gogh)'
  -- previously tried: tokyonight (LazyVim default), nord
  -- switch by moving the comment on the colorscheme lines below
  -- { "folke/tokyonight.nvim", enabled = false },
  { "gbprod/nord.nvim" },
  { "sainnhe/gruvbox-material", lazy = false, priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "tokyonight",
      -- colorscheme = "nord",
    },
  },
}
