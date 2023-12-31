return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	cmd = "Telescope",
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					width = 0.85,
					preview_cutoff = 120,
					horizontal = {
						preview_width = function(_, cols, _)
							if cols < 120 then
								return math.floor(cols * 0.5)
							end
							return math.floor(cols * 0.6)
						end,
						mirror = false,
					},
					vertical = { mirror = false },
				},
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
					"--hidden",
				},
				file_ignore_patterns = {
					"node_modules/",
					"%.git/",
					"%.DS_Store$",
					"target/",
					"build/",
					"%.o$",
				},
				winblend = 0,
				border = {},
				borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				color_devicons = true,
				set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
			},
			pickers = {
				find_files = { hidden = true },
				live_grep = {
					-- @usage don't include the filename in the search results
					only_sort_text = true,
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
			},
		})

		require("telescope").load_extension("fzf")
		require("telescope").load_extension("lazygit")
	end,
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" } },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" } },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" } },
		{ "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" } },
	},
}
