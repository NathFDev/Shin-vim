return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui" },
		{ "theHamsta/nvim-dap-virtual-text" },
		{ "nvim-telescope/telescope-dap.nvim" },
	},
	keys = {
		{ "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle Breakpoint" } },
		{ "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Run or continue the debugger" } },
		{
			"<leader>dus",
			function()
				local widgets = require("dap.ui.widgets")
				local sidebar = widgets.sidebar(widgets.scopes)
				sidebar.open()
			end,
			{ desc = "Open debugging sidebar" },
		},
	},
}
