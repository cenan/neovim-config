vim.g.mapleader = ","

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "//", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<Tab>", ":bn<CR>", { desc = "Move to next buffer" })
keymap.set("n", "<S-Tab>", ":bp<CR>", { desc = "Move to previous buffer" })
keymap.set('n', '<leader>x', function()
    -- Check if the buffer has unsaved changes
    if vim.bo.modified then
        local choice = vim.fn.confirm("Buffer has unsaved changes. Save?", "&Yes\n&No\n&Cancel")
        if choice == 1 then
            vim.cmd('write')
            vim.cmd('bdelete')
        elseif choice == 2 then
            vim.cmd('bdelete!')
        end
    else
        vim.cmd('bdelete')
    end
end, { noremap = true, silent = true, desc = "Close buffer" })
keymap.set('n', '<leader>lf', vim.lsp.buf.format, { noremap = true, silent = true, desc = 'Format buffer' })

