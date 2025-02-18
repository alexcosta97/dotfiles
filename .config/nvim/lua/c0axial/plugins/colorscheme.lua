return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = {
    style = "night",
    transparent = false,
    styles = {
      sidebars = "dark",
      floats = "dark",
    },
    on_colors = function(colors)
      local bg = "#011628"
      local bg_dark = "#011423"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"

      colors.bg = bg
      colors.bg_dark = bg_dark
      colors.bg_float = bg_dark
      colors.bg_highlight = "#143652"
      colors.bg_popup = bg_dark
      colors.bg_search = "#0A64AC"
      colors.bg_sidebar = bg_dark
      colors.bg_statusline = bg_dark
      colors.bg_visual = "#275378"
      colors.border = "#547998"
      colors.fg = fg
      colors.fg_dark = fg_dark
      colors.fg_float = fg
      colors.fg_gutter = "#627E97"
      colors.fg_sidebar = fg_dark
    end,
  },
  init = function()
    vim.cmd("colorscheme tokyonight")
  end,
}
