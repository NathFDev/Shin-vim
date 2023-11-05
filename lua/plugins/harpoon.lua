return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<C-m>", "<cmd>lua require('harpoon.mark').add_file<CR>", { desc = "Mark files" } },
	},
	{ "<leader>hu", "<cmd>lua harpoon_ui.toggle_quick_menu<CR>", { desc = "Mark files" } },
}
