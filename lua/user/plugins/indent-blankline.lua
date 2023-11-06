return {
	"lukas-reineke/indent-blankline.nvim",
	event = "BufReadPre",
	opts = {
		indent = {
			char = "│",
			tab_char = "│",
		},
		scope = { enabled = false },
		exclude = {
			filetypes = {
				"help",
				"neo-tree",
				"lazy",
				"mason",
				"lspsaga",
			},
		},
	},
	main = "ibl",
	config = function()
		require("ibl").setup()
	end,
}
