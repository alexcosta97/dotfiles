return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("n", " " .. " New File", "<cmd>ene<CR>"),
      dashboard.button(
        "e",
        " " .. "Toggle file explorer",
        "<cmd>lua require('neo-tree.command').execute({ toggle = true })<CR>"
      ),
      dashboard.button("f", " " .. " Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("g", " " .. " Find Text", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("r", " " .. " Recent Files", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("l", "󰒲 " .. " Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("q", " " .. " Quit", "<cmd>qa<CR>"),
    }

    --Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)
  end,
}
