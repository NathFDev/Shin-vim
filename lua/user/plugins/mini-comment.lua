return {
	"echasnovski/mini.comment",
	version = false,
	event = "InsertEnter",
	config = function(_, opts)
		require("mini.comment").setup(opts)
	end,
	opts = {
		options = {
			custom_commentstring = function()
				return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
			end,
		},
	},
}
