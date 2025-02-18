return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      dockerfile = { "hadolint" },
      fish = { "fish" },
      json = { "jsonlint" },
      javascript = { "eslint" },
      javascriptreact = { "eslint" },
      lua = { "luacheck" },
      markdown = { "markdownlint" },
      typescript = { "eslint" },
      typescriptreact = { "eslint" },
    },
  },
  config = function(_, opts)
    local lint = require("lint")
    lint.linters_by_ft = opts.linters_by_ft

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd(opts.events, {
      group = lint_augroup,
      callback = function()
        if vim.opt_local.modifiable:get() then
          lint.try_lint()
        end
      end,
    })
  end,
}
