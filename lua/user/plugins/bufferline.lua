return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			diagnostics = "nvim_lsp",
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
	init = function()
		local keymap = vim.keymap

		keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Cycle to Next buffer" })
		keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Cycle to Next buffer" })
		keymap.set("n", "<leader>X", "<cmd>BufferLineCloseOthers<CR>", { desc = "Cycle to Next buffer" })
	end,
}
