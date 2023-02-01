

local lsp_installer_status, lsp_installer = pcall(require, "nvim-lsp-installer")

if not lsp_installer_status then

    print("nvim-lsp-installer not installed.")
    return

end

lsp_installer.setup({
    settings = {
        ui = {
            icons = {
                server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗"
            }
        }
    }
})


local lspconfig_status, lspconfig = pcall(require, "lspconfig")

if not lspconfig_status then

    vim.notify("lspconfig is not installed.")
    return

end



local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

local capabilities = {}

if not cmp_nvim_lsp_status then

    vim.notify("cmp_nvim_lsp not installed.")

    capabilities.default_capabilities = function()
    end

else

    capabilities.default_capabilities = cmp_nvim_lsp.default_capabilities

end

lspconfig.ccls.setup({

    capabilities = capabilities.default_capabilities(),
    filetypes = {"c", "cpp", "objc", "objcpp", "cuda", "cuh", "h", "hpp"}

})

lspconfig.sumneko_lua.setup({

    capabilities = capabilities.default_capabilities(),

    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim', 'use'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            }
        }
    }

})


