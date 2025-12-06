local theme = require("theme").name

local function apply()
	vim.opt.termguicolors = true

	if theme == "tokyo-night" or theme == "tokyo-dracula" then
		require("tokyonight").setup({
			style = "moon",
			styles = { comments = { italic = true }, keywords = { italic = true } },
		})
		vim.cmd.colorscheme("tokyonight-moon")
	elseif theme == "dracula" then
		require("dracula").setup({ transparent_bg = false, italic_comment = true })
		vim.cmd.colorscheme("dracula")
	elseif theme == "nord" then
		vim.cmd.colorscheme("nordfox")
	elseif theme == "catppuccin-mocha" then
		require("catppuccin").setup({ flavour = "mocha", term_colors = true })
		vim.cmd.colorscheme("catppuccin-mocha")
	elseif theme == "rose-pine" then
		require("rose-pine").setup({ variant = "moon", styles = { italic = true } })
		vim.cmd.colorscheme("rose-pine")
		vim.api.nvim_set_hl(0, "Cursor", { fg = "#1f1d2e", bg = "#f4b8c6" })
	elseif theme == "eldritch" then
		vim.cmd.colorscheme("eldritch")
	elseif theme == "zenbones" then
		vim.cmd.colorscheme("forestbones")
	elseif theme == "nightfox" then
		vim.cmd.colorscheme("carbonfox")
	elseif theme == "github" then
		vim.cmd.colorscheme("github_dark")
	else
		vim.g.everforest_background = "soft"
		vim.g.everforest_terminal_colors = 1
		vim.g.everforest_enable_italic = 1
		vim.g.everforest_better_performance = 1
		vim.g.everforest_diagnostic_virtual_text = "colored"
		vim.cmd.colorscheme("everforest")
	end
end

return {
	{ "EdenEast/nightfox.nvim" },
	{ "projekt0n/github-nvim-theme", name = "github-theme" },
	{
		"eldritch-theme/eldritch.nvim",
		opts = {
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
			},
			sidebars = { "qf", "help", "snacks", "terminal", "Snacks.Terminal", "NvimTree", "Mason" },
			lualine_bold = true,
		},
	},
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
	},
	{ "folke/tokyonight.nvim" },
	{ "sainnhe/everforest" },
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "Mofiqul/dracula.nvim" },
	{ "shaunsingh/nord.nvim" },
	{ "sainnhe/sonokai" },
	{
		"sainnhe/everforest",
		name = "theme-applier",
		priority = 1000,
		config = apply,
	},
}
