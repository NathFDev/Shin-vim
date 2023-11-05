return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{ "williamboman/mason.nvim" }, -- Optional
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "hrsh7th/cmp-nvim-lua" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },

		-- Snippet
		{ "L3MON4D3/LuaSnip", version = "v2.*" }, -- Required
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		lsp_zero.on_attach(function(_, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp_zero.default_keymaps({
				buffer = bufnr,
				preserve_mappings = false,
			})
		end)

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"jsonls",
				"emmet_language_server",
				"volar",
				"astro",
				"custom_elements_ls",
				"dockerls",
				"pyright",
				"gopls",
				"rust_analyzer",
			},
			automatic_installation = true,
			handlers = {
				lsp_zero.default_setup,
			},
		})
	end,
}
