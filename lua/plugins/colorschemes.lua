return {
	{
		"projekt0n/github-nvim-theme",
		-- init = function()
		-- 	vim.cmd("set termguicolors")
		-- 	vim.cmd.colorscheme("github_dark_dimmed")
		-- 	vim.cmd([[highlight Cursor guifg=pine guibg=lightpink]])
		-- end,
	},

	{
		"EdenEast/nightfox.nvim",
		-- config = function()
		-- 	vim.cmd.colorscheme("carbonfox")
		-- 	vim.cmd([[highlight Cursor guifg=pine guibg=lightpink]])
		-- end,
	},

	{
		"eldritch-theme/eldritch.nvim",

		opts = {
			-- palette = "darker",
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				functions = {},
				variables = {},
				sidebars = "dark",
				floats = "dark",
			},
			sidebars = { "qf", "help", "snacks", "terminal", "Snacks.Terminal", "NvimTree", "Mason" },
			lualine_bold = true,
		},

		-- config = function()
		-- 	vim.cmd.colorscheme("eldritch")
		-- end,
	},

	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		background = "dark",
		config = function()
			vim.cmd("set termguicolors")
			vim.cmd.colorscheme("forestbones")
			vim.cmd([[highlight Cursor guifg=pine guibg=lightpink]])
		end,
	},

	{
		"folke/tokyonight.nvim",
		-- init = function()
		-- vim.cmd("set termguicolors")
		-- vim.cmd.colorscheme("tokyonight-moon")
		--
		-- 	vim.defer_fn(function()
		-- 		vim.cmd([[highlight Cursor guifg=#FFFFFF guibg=lightgreen]])
		-- 	end, 1)
		-- end,
	},

	{
		"sainnhe/everforest",
		config = function()
			vim.g.everforest_background = "soft"
			vim.g.everforest_terminal_colors = 1
			vim.g.everforest_enable_italic = 1
			vim.g.everforest_better_performance = 1
			vim.g.everforest_cursor = "aqua"
			vim.g.everforest_diagnostic_virtual_text = "colored"
			vim.cmd("set termguicolors")
			-- vim.cmd.colorscheme("everforest")
		end,
	},

	{
		"catppuccin/nvim",
		-- config = function()
		--   -- vim.cmd [[autocmd VimEnter * highlight Cursor guibg=lightpink]]
		-- end,
		name = "catppucin",
	},
}
