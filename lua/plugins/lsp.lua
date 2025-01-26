-- Ruff for linting and formatting:
require('lspconfig').ruff.setup {
  init_options = {
    settings = {
      args = {},
    }
  }
}
-- Pyright for everything else:
require('lspconfig').pyright.setup {
    settings = {
        pyright = {
            autoImportCompletion = true,
            -- Using Ruff's import organizer
            disableOrganizeImports = true
        },
        python = {
            analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                ignore = { '*' }
            }
        }
    }
}
