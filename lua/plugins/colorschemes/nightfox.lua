
local status, nightfox = pcall(require, 'nightfox')

if not status then
	vim.notify("nightfox theme not installed.")
    return
end

nightfox.setup({
	options = {
		transparent = false,
		terminal_colors = true
	}
})

vim.cmd('colorscheme carbonfox')
