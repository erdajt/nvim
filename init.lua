require("settings")
require("autocommands")
require("plugins.init")
require("keymaps")

local theme = require("theme")

vim.api.nvim_create_user_command("ThemeSet", function(opts)
	if theme.set(opts.args) then
		print("Theme set to " .. opts.args .. ". Restart Neovim to apply.")
	else
		print("Invalid theme: " .. opts.args)
	end
end, {
	nargs = 1,
	complete = function()
		return theme.allowed
	end,
})
