return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
	},
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
			icons = {
				show = {
					file = true,
					folder = true,
					folder_arrow = true,
					git = true,
				},
			},
		},
		filters = {
			dotfiles = false,
		},
		git = {
			enable = true,
			ignore = false,
		},
		actions = {
			open_file = {
				quit_on_open = false,
			},
		},
	},
}
