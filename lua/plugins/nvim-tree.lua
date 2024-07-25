return {
	'nvim-tree/nvim-tree.lua',
	opts = {
		sort = {
			sorter = 'case_sensitive',
		},
		view = {
			width = 32,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	},
	keys = {
		{'<leader>pv', function() return vim.cmd('NvimTreeToggle') end}
	}
}
