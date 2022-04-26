
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require'packer'.startup(function()
    use 'wbthomason/packer.nvim' -- Plugin manager
    use 'EdenEast/nightfox.nvim' -- Theme
    use 'kyazdani42/nvim-web-devicons' -- Incons that are used for neovim
    use 'kyazdani42/nvim-tree.lua' -- (Requires web-devicons) Folder structure plugin
    use 'rcarriga/nvim-notify' -- Shows notifications in a formatted way
    use 'nvim-lualine/lualine.nvim' -- Shows an info line at the bottom of the vim instance
    use 'romgrk/barbar.nvim' -- Shows buffered files at the top as tabs
    use {
        'nvim-treesitter/nvim-treesitter', -- Incremental parser generator
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-refactor' -- (Requires treesitter) code refactoring bindings
    use 'theHamsta/nvim-treesitter-pairs' -- (Requires treesitter)
    use 'p00f/nvim-ts-rainbow' -- (Requires treesitter) colors matching parenthesis
    use 'tpope/vim-commentary' -- Autocomment bindings
    use {
        'neovim/nvim-lspconfig', -- Language Server
        'williamboman/nvim-lsp-installer', -- Language Server Package Manager
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
        'onsails/lspkind-nvim'
    }

    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end

end)

