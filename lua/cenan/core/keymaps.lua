vim.g.mapleader = ","

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "//", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<Tab>", ":bn<CR>", { desc = "Move to next buffer" })
keymap.set("n", "<S-Tab>", ":bp<CR>", { desc = "Move to previous buffer" })

