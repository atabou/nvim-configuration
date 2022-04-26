
require'nvim-tree'.setup {

    renderer = {
    },
    
    actions = {
        open_file = {
            quit_on_open = true
        }
    },

    filters = {
        dotfiles = true
    },

    diagnostics = {
        enable = true
    }
}

