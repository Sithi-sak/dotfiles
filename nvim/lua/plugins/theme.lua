return {
	{
		"Sithi-sak/base16-nvim",
		config = function()
			vim.opt.termguicolors = true
			-- choose any base16 theme by name:
			vim.cmd("colorscheme base16-default-dark")
		end,
	},
}
