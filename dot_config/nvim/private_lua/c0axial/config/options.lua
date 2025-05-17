local opt = vim.opt

opt.autowrite = true

-- Display
opt.relativenumber = true -- show relative numbers
opt.number = true -- show line numbers
opt.showmode = false -- disable mode display since we have statusline

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true --expand tab to spaces
opt.smartindent = true -- insert indents automatically

opt.wrap = true
opt.linebreak = true -- Wrap lines at convenient points

-- Search
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assume you want case-sensitive
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"

opt.cursorline = true

-- Turn on Termguicolors for tokyonight scheme ot work
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Clipboard
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- use system clipboard as default register if not in SSH

-- Split Windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.confirm = true -- Confirm to save changes before exiting modified buffer

-- Timeout
opt.timeoutlen = vim.g.vscode and 1000 or 300 -- Lower than defualt (1000) to quickly trigger which-key

opt.wildmode = "longest:full,full" -- Command-line completion mode

-- Scroll
opt.smoothscroll = true
