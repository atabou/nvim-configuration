
local catppuccin = require('catppuccin')

catppuccin.setup({

    transparent_background = false,
    term_colors = false,
    styles = {
        comments = "bold",
        functions = "italic",
        keywords = "italic",
        strings = "NONE",
        variables = "italic",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "bold",
                hints = "bold",
                warnings = "bold",
                information = "bold",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = false,
            transparent_panel = false,
        },

        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        }
        ,
        dashboard = true,
        barbar = true,
        bufferline = false,
        notify = true,
        telekasten = false,
        symbols_outline = true,
    }

})
