return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts_extend = { "spec" },
  opts = {
    preset = "helix",
    spec = {
      { "<leader>w", group = "windows" },
      { "<leader>f", group = "file/find" },
      { "<leader>t", group = "tabs" },
      { "<leader>b", group = "buffer" },
      { "<leader>c", group = "code" },
      { "g", group = "goto" },
    },
  },
}
