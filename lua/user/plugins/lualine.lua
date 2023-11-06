return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = function()
		-- Lua
		require("lualine").setup({
			options = {
				-- ... your lualine config
				theme = "tokyonight",
				-- ... your lualine config
			},
		})
	end,
}
