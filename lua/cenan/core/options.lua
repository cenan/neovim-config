vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = false
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true -- if mixed case is searched, assume case-insensitive

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be dark
opt.signcolumn = "yes" -- show sign column so that the text won't shift

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus") -- use the system clipboard as the default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom



