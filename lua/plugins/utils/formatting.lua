return {
	{
		-- Autoformat
		"stevearc/conform.nvim",
		opts = {
			notify_on_error = true,
			format_on_save = function(bufnr)
				local disable_filetypes = { c = true, cpp = true, cs = true, php = false } -- Disable 'format_on_save lsp_fallback'
				return {
					async = false,
					timeout_ms = 1000,
					lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				}
			end,
			formatters_by_ft = {
				-- php = { "php-cs-fixer" },
				lua = { "stylua" },
				python = { "black" },
				rust = { "rustfmt" },
				sh = { "beautysh" },
				java = { "google_java_format" },
				-- c = { "clang-format" },
				-- cpp = { "clang-format" },
				cs = { "csharpier" },
			},
			formatters = {
				["php-cs-fixer"] = {
					command = "php-cs-fixer",
					args = {
						"fix",
						"--config=" .. "$HOME/.php-cs-fixer.php",
						"$FILENAME",
					},
					stdin = false,
				},
			},
		},
	},
}
