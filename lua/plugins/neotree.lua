require("neo-tree").setup({
    filesystem = {
        follow_current_file = {
            enabled = false, -- This will find and focus the file in the active buffer every time
            --               -- the current file is changed while the tree is open.
            leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
          },
          never_show = { 
              ".git"
          },
          always_show = {
              ".gitignore",
              ".env",
          },
    },
})
