return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	cmd = "LspSaga",
	config = function()
		require("lspsaga").setup({})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	init = function()
		local map = vim.keymap.set

		map("n", "<leader>ca", "<cmd>LuaSaga code_action<cr>", { desc = { "Code Action" } })
		map("n", "<leader>pd", "<cmd>LuaSaga peek_definition<cr>", { desc = { "Peek Definition" } })
		map("n", "<leader>pt", "<cmd>LuaSaga peek_type_definition<cr>", { desc = { "Peek Type Definition" } })
		map("n", "<leader>pt", "<cmd>LuaSaga peek_type_definition<cr>", { desc = { "Peek Type Definition" } })
		map("n", "<leader>t", "<cmd>LuaSaga term_toggle<cr>", { desc = { "Toggle Terminal" } })
		map("n", "<leader>i", "<cmd>LuaSaga hover_doc<cr>", { desc = { "Show info" } })
	end,
}
