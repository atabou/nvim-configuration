
local status, notify = pcall(require, "notify")

if not status then
    print("notify not installed.")
    return
end

notify.setup({

    background_colour = "#ffff"

})

vim.notify = notify


