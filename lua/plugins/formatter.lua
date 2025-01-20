require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        python = {
            require("formatter.filetypes.python").ruff
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
        }
    }
}

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]], false)
