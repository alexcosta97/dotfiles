return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "prettier" },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "bashls",
        "cssls",
        "tailwindcss",
        "dockerls",
        "graphql",
        "eslint",
        "jsonls",
        "lua_ls",
        "ts_ls",
      },
    },
  },
}
