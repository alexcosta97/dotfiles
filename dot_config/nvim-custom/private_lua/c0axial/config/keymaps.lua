vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

-- Buffer management
keymap.set("n", "<leader>bd", ":bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Delete Buffer" })

-- Window management
keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
keymap.set("n", "<leader>we", "<C-W>=", { desc = "Make splits equal", remap = true })

-- Window Focus
keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
keymap.set("n", "<leader>wh", "<C-W>h", { desc = "Focus Left Window", remap = true })
keymap.set("n", "<leader>wl", "<C-W>l", { desc = "Focus Right Window", remap = true })
keymap.set("n", "<leader>wj", "<C-W>j", { desc = "Focus Below Window", remap = true })
keymap.set("n", "<leader>wk", "<C-W>k", { desc = "Focus Above Window", remap = true })

-- Tab Management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new Tab" })
keymap.set("n", "<leader>td", "<cmd>tabclose<CR>", { desc = "Close Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous Tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Buffer to new tab" })
