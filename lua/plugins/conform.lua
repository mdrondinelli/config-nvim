return {
	'stevearc/conform.nvim',
	lazy = false,
	opts = {
		formatters_by_ft = {
			javascript = { 'prettierd' },
			javascriptreact = { 'prettierd' },
			typescript = { 'prettierd' },
			typescriptreact = { 'prettierd' },
			python = { 'blackd-client', 'black' },
			c = { 'clang-format' },
			cpp = { 'clang-format' }
		},
		format_on_save = {
			lsp_format = "fallback",
		}
	},
	keys = {
		{ '<F3>', function() require('conform').format({ async = true }) end }
	}
}
