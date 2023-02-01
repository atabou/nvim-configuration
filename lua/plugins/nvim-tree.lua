
local status, nvimtree = pcall(require, "nvim-tree")

if not status then
	print("nvim-tree not installed.")
	return
end

nvimtree.setup {

	renderer = {},

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

