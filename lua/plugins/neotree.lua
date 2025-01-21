require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            hide_gitignored = true,
            always_show = {
                ".env",
                ".gitignore",
            },
        },
    },
})
