-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indent Settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions:remove("o")
        vim.opt.formatoptions:remove("r")
    end,
})

-- Line Numbers
vim.opt.number = true

vim.opt.wrap = false


-- Others
vim.opt.shell = "/bin/zsh"
vim.opt.swapfile = false
vim.keymap.set('n', 'q', '<Nop>')
