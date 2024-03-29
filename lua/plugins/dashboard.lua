
local status, dashboard = pcall(require, "dashboard")

if not status then
    vim.notify("dashboard not installed.")
    return
end

local M = {}

function M.config()

    dashboard.setup({})

end

return M

-- local M = {}

-- function M.config()

--     local g = vim.g
--     local fn = vim.fn

--     local plugins_count = fn.len(vim.fn.globpath(fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1))

--     g.dashboard_default_executive = "telescope"
--     g.dashboard_custom_header = {
--         " ",
--         " ",
--         " ",
--         " ",
--         " ",
--         "    ███    ██ ██    ██ ██ ███    ███",
--         "    ████   ██ ██    ██ ██ ████  ████",
--         "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
--         "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
--         "    ██   ████   ████   ██ ██      ██",
--         " ",
--         " ",
--         " ",
--     }

--     g.dashboard_custom_section = {
--         a = { description = { "   Find File                 SPC f f" }, command = "Telescope find_files" },
--         b = { description = { "   Recents                   SPC f o" }, command = "Telescope oldfiles" },
--         c = { description = { "   Find Word                 SPC f w" }, command = "Telescope live_grep" },
--         d = { description = { "   New File                  SPC f n" }, command = "DashboardNewFile" },
--         e = { description = { "   Bookmarks                 SPC f m" }, command = "Telescope marks" },
--         f = { description = { "   Last Session              SPC s l" }, command = "SessionLoad" },
--     }

--     g.dashboard_custom_footer = {
--         " ",
--         " Nvim loaded " .. plugins_count .. " plugins ",
--     }
-- end

-- return M
