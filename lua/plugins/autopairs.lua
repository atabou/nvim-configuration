
local status, autopairs = pcall(require, "nvim-autopairs")

if not status then
	print("Autopairs not installed")
end

autopairs.setup{}
