
local ensure_packer = function()

    local fn = vim.fn

    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

    if fn.empty(fn.glob(install_path)) > 0 then

        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true

    end

    return false

end

local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer-setup.lua source <afile> | PackerSync
    augroup end
]])

local status, packer = pcall(require, "packer")

if not status then
    print("Packer not found!")
    return
end

return packer.startup(function()

    use 'wbthomason/packer.nvim' -- Plugin manager

    -- Themes
    use 'EdenEast/nightfox.nvim' -- Theme
    use 'shaunsingh/nord.nvim' -- Theme
    use { -- Theme
        'catppuccin/nvim',
        as = "catppuccin"
    }

    -- Nvim tree
    use 'kyazdani42/nvim-web-devicons' -- Incons that are used for neovim
    use 'kyazdani42/nvim-tree.lua' -- (Requires web-devicons) Folder structure plugin

    -- Notify
    use 'rcarriga/nvim-notify' -- Shows notifications in a formatted way

    -- Line at the bottom
    use 'nvim-lualine/lualine.nvim' -- Shows an info line at the bottom of the vim instance

    -- Tabs
    use 'romgrk/barbar.nvim' -- Shows buffered files at the top as tabs

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter', -- Incremental parser generator
        run = ':TSUpdate'
    }

    use 'nvim-treesitter/nvim-treesitter-refactor' -- (Requires treesitter) code refactoring bindings
    use 'theHamsta/nvim-treesitter-pairs' -- (Requires treesitter)
    use 'p00f/nvim-ts-rainbow' -- (Requires treesitter) colors matching parenthesis
    use 'tpope/vim-commentary' -- Autocomment bindings
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
        'onsails/lspkind-nvim'
    }

    use 'windwp/nvim-autopairs'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use 'glepnir/dashboard-nvim'

    -- lspconfig
    use("neovim/nvim-lspconfig")

    -- lsp manager
    -- use("williamboman/mason.nvim")
    -- use("williamboman/mason-lspconfig.nvim")
    use("williamboman/nvim-lsp-installer")

    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end

end)

