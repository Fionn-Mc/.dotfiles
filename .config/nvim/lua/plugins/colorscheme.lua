return {
  -- disable tokyonight; we use nord to match wezterm's nord palette
  { "folke/tokyonight.nvim", enabled = false },
  { "gbprod/nord.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
