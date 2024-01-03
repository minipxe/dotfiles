local G = require("config.G")

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("nvim-tree").setup({
            disable_netrw = false,
            filters = {
                dotfiles = true,
            },
            actions = {
                open_file = {
                    resize_window = true,
                    quit_on_open = true,
                },
            },
            on_attach = function()
                local api = require("nvim-tree.api")
                G.bulk_register({
                    {
                        mode = { "n" },
                        lhs = "o",
                        rhs = api.node.open.edit,
                        options = { noremap = true, silent = true, },
                        description = "Open",
                    },
                    {
                        mode = { "n" },
                        lhs = ".",
                        rhs = api.tree.toggle_hidden_filter,
                        options = { noremap = true, silent = true, },
                        description = "Togglo Filter: Dotfiles",
                    },
                    {
                        mode = { "n" },
                        lhs = "R",
                        rhs = api.tree.reload,
                        options = { noremap = true, silent = true, },
                        description = "Refresh",
                    },
                    {
                        mode = { "n" },
                        lhs = "a",
                        rhs = api.fs.create,
                        options = { noremap = true, silent = true, },
                        description = "Create",
                    },
                    {
                        mode = { "n" },
                        lhs = "d",
                        rhs = api.fs.remove,
                        options = { noremap = true, silent = true, },
                        description = "Delete",
                    },
                    {
                        mode = { "n" },
                        lhs = "r",
                        rhs = api.fs.rename,
                        options = { noremap = true, silent = true, },
                        description = "Rename",
                    },
                    {
                        mode = { "n" },
                        lhs = "x",
                        rhs = api.fs.cut,
                        options = { noremap = true, silent = true, },
                        description = "Cut",
                    },
                    {
                        mode = { "n" },
                        lhs = "c",
                        rhs = api.fs.copy.node,
                        options = { noremap = true, silent = true, },
                        description = "Copy",
                    },
                    {
                        mode = { "n" },
                        lhs = "p",
                        rhs = api.fs.paste,
                        options = { noremap = true, silent = true, },
                        description = "Paste",
                    },
                    {
                        mode = { "n" },
                        lhs = "y",
                        rhs = api.fs.copy.filename,
                        options = { noremap = true, silent = true, },
                        description = "Copy Name",
                    },
                    {
                        mode = { "n" },
                        lhs = "Y",
                        rhs = api.fs.copy.relative_path,
                        options = { noremap = true, silent = true, },
                        description = "Copy Relative Path",
                    },
                    {
                        mode = { "n" },
                        lhs = "gy",
                        rhs = api.fs.copy.absolute_path,
                        options = { noremap = true, silent = true, },
                        description = "Copy Absolute Path",
                    },
                    {
                        mode = { "n" },
                        lhs = "I",
                        rhs = api.node.show_info_popup,
                        options = { noremap = true, silent = true, },
                        description = "Info",
                    },
                    {
                        mode = { "n" },
                        lhs = "n",
                        rhs = api.node.open.tab,
                        options = { noremap = true, silent = true, },
                        description = "Open: New Tab",
                    },
                    {
                        mode = { "n" },
                        lhs = "]",
                        rhs = api.tree.change_root_to_node,
                        options = { noremap = true, silent = true, },
                        description = "CD",
                    },
                    {
                        mode = { "n" },
                        lhs = "[",
                        rhs = api.tree.change_root_to_parent,
                        options = { noremap = true, silent = true, },
                        description = "dir_up",
                    },
                })
            end,
        })
    end,
    keys = {
        { "<A-m>", ":NvimTreeToggle<CR>", "n", desc = "open file explorer" },
    },
}
