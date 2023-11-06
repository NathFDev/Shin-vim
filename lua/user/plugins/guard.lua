return {
	"nvimdev/guard.nvim",
	event = "LspAttach",
	-- Builtin configuration, optional
	dependencies = {
		"nvimdev/guard-collection",
	},
	config = function()
		local ft = require("guard.filetype")

		ft("rust"):fmt("rustfmt")
		ft("html"):fmt("prettier")
		ft("css"):fmt("prettier")
		ft("scss"):fmt("prettier")
		ft("lua"):fmt("stylua"):lint("luacheck")
		ft("go"):fmt("gofumpt"):append("golines"):lint("golangci")
		ft("python"):fmt("black"):append("isort"):lint("ruff")
		ft("javascript"):fmt("prettier"):lint("eslint")
		ft("javascriptreact"):fmt("prettier"):lint("eslint")
		ft("typescript"):fmt("prettier"):lint("eslint")
		ft("typescriptreact"):fmt("prettier"):lint("eslint")
		ft("astro"):fmt("prettier"):lint("eslint")
		ft("vue"):fmt("prettier"):lint("eslint")
		ft("svelte"):fmt("prettier"):lint("eslint")
		ft("toml"):fmt("taplo")
		ft("javascriptreact, typescriptreact, html, vue, astro, svelte"):fmt({
			cmd = "rustywind",
			args = { "--write" },
			stdin = true,
		})

		-- Call setup() LAST!
		require("guard").setup({
			-- the only options for the setup function
			fmt_on_save = true,
			-- Use lsp if no formatter was defined for this filetype
			lsp_as_default_formatter = false,
		})
	end,
}
