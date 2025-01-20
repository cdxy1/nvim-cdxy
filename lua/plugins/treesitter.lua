require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "javascript", "c"},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  refactor = {
      smart_rename = {
          enable = true,
          keymaps = {
              smart_rename = "grr"
          },
      },
  },
  navigation = {
          enable = true,
          keymaps = {
            goto_definition = "gnd",
            list_definitions = "gnD",
            list_definitions_toc = "gO",
            goto_next_usage = "<a-*>",
            goto_previous_usage = "<a-#>",
        },
    },
}
