
require'nvim-treesitter.configs'.setup {

    ensure_installed = {
        'python',
        'lua',
        'c',
        'cuda',
        'java',

    },


    sync_install = false,

    highlight = {
        enable = true,
        addition_vim_regex_highlighting = false
    },

    refactor = {

        highlight_definitions = { enable = true },
        smart_rename = {

            enable = true,
            keymaps = {
                smart_rename = 'grr'
            }

        },

        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions = "g0",
                goto_next_usage = "<A-*>",
                goto_previous_usage = "<A-#>"
            }

        }

    },

    pairs = {
        enable = true,
        goto_right_end = true;
    },

    rainbow = {
        
        enable = true,
        extended_mode = true,
        max_file_lines = nil

    }

}



