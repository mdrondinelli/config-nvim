local bultin = nil
return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {'nvim-lua/plenary.nvim'},
	config = function()
		require("telescope").setup()
		builtin = require('telescope.builtin')
	end,
	keys = {
		{'<leader>pf', function() builtin.find_files({hidden = true}) end},
		{
			'<leader>ps',
			function()
				-- local search = vim.fn.input('grep > ')
				-- builtin.grep_string({search = search})
				builtin.live_grep({additional_args = {'--hidden', '-g', '!.git/*'}})
			end
		},
		{'<C-p>', function() builtin.git_files() end}
	}
}
