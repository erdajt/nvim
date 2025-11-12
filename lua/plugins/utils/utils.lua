return {
	{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },

	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		opts = {},
	},

	{
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		opts = {
			options = {
				indicator = { icon = "▎", style = "icon" },
				offsets = {
					{ filetype = "NvimTree", text = "File Explorer", text_align = "center", padding = 0 },
				},
				separator_style = "thin",
			},
		},
		config = function()
			require("bufferline").setup({
				vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true }),
			})
		end,
	},

	{ -- SQL Database UI and completion
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "python", "go" },
			auto_install = true,
			highlight = {
				enable = true,
				-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
				--  If you are experiencing weird indenting issues, add the language to
				--  the list of additional_vim_regex_highlighting and disabled languages for indent.
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = { enable = true, disable = { "ruby" } },
		},
		config = function(_, opts)
			-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

			---@diagnostic disable-next-line: missing-fields
			require("nvim-treesitter.configs").setup(opts)
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "auto",
				height = 20,
			},
		},
	},

	-- Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{ -- just transparency
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NvimTreeNormal",
					"NvimTreeNormalNC",
					-- Add other groups
				},
			})
			vim.api.nvim_set_keymap("n", "<leader>tt", ":TransparentToggle<CR>", { noremap = true, silent = true })
		end,
	},

	{
		"echasnovski/mini.icons",
	},

	{ "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment visual regions/lines

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			-- Document existing key chains
			require("which-key").setup({
				["<leader>c"] = { name = "[C]ode" },
				["<leader>d"] = { name = "[D]ocument" },
				["<leader>r"] = { name = "[R]ename" },
				["<leader>s"] = { name = "[S]earch" },
				["<leader>w"] = { name = "[W]orkspace" },
			})
		end,
	},

	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},

	{ -- auto close html tags
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	{
		"github/copilot.vim",
		config = function()
			vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<CR>", { desc = "Enable Copilot" })
			vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<CR>", { desc = "Disable Copilot" })

			vim.keymap.set("i", "<A-j>", 'copilot#Accept("<CR>")', { expr = true, replace_keycodes = false })
			vim.keymap.del("i", "<Tab>")

			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
			vim.keymap.set("i", "<A-w>", "<Plug>(copilot-accept-word)")
			vim.keymap.set("i", "<A-n>", "<Plug>(copilot-next)")
		end,
	},

	{ -- find/replace across multiple files
		"nvim-pack/nvim-spectre",
		keys = {
			{ "mfr", "<cmd>Spectre<cr>", mode = { "n" } },
		},
		config = function()
			require("spectre").setup({ is_block_ui_break = true })
		end,
	},

	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
		config = function()
			local mc = require("multicursor-nvim")
			mc.setup()

			local set = vim.keymap.set

			-- Add or skip cursor above/below the main cursor.
			set({ "n", "x" }, "<up>", function()
				mc.lineAddCursor(-1)
			end)
			set({ "n", "x" }, "<down>", function()
				mc.lineAddCursor(1)
			end)
			set({ "n", "x" }, "<leader><up>", function()
				mc.lineSkipCursor(-1)
			end)
			set({ "n", "x" }, "<leader><down>", function()
				mc.lineSkipCursor(1)
			end)

			-- Add or skip adding a new cursor by matching word/selection
			set({ "n", "x" }, "<leader>n", function()
				mc.matchAddCursor(1)
			end)
			set({ "n", "x" }, "<leader>s", function()
				mc.matchSkipCursor(1)
			end)
			set({ "n", "x" }, "<leader>N", function()
				mc.matchAddCursor(-1)
			end)
			set({ "n", "x" }, "<leader>S", function()
				mc.matchSkipCursor(-1)
			end)

			-- Add and remove cursors with control + left click.
			set("n", "<c-leftmouse>", mc.handleMouse)
			set("n", "<c-leftdrag>", mc.handleMouseDrag)
			set("n", "<c-leftrelease>", mc.handleMouseRelease)

			-- Disable and enable cursors.
			set({ "n", "x" }, "<c-q>", mc.toggleCursor)

			-- Mappings defined in a keymap layer only apply when there are
			-- multiple cursors. This lets you have overlapping mappings.
			mc.addKeymapLayer(function(layerSet)
				-- Select a different cursor as the main one.
				layerSet({ "n", "x" }, "<left>", mc.prevCursor)
				layerSet({ "n", "x" }, "<right>", mc.nextCursor)

				-- Delete the main cursor.
				layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

				-- Enable and clear cursors using escape.
				layerSet("n", "<esc>", function()
					if not mc.cursorsEnabled() then
						mc.enableCursors()
					else
						mc.clearCursors()
					end
				end)
			end)

			-- Customize how cursors look.
			local hl = vim.api.nvim_set_hl
			hl(0, "MultiCursorCursor", { reverse = true })
			hl(0, "MultiCursorVisual", { link = "Visual" })
			hl(0, "MultiCursorSign", { link = "SignColumn" })
			hl(0, "MultiCursorMatchPreview", { link = "Search" })
			hl(0, "MultiCursorDisabledCursor", { reverse = true })
			hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
			hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
		end,
	},
}
