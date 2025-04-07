return {
  {
    "HoNamDuong/hybrid.nvim",
    config = function()
      require("hybrid").setup({
        theme = "hybrid",
        transparent = true,
        styles = {
          sidebars = "transparent", -- Make sidebars (e.g., Telescope) transparent
          floats = "transparent",   -- Make floating windows transparent
        },
        italic = {
          strings = false,
          emphasis = true,
          comments = false,
          folds = false,

        }
      })
    end
  },
  { "erikbackman/brightburn.vim" },
  { "rose-pine/neovim" }
}
