return {
	"nvim-lualine/lualine.nvim",
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
