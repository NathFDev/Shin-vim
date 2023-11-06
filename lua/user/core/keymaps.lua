local map = function(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- go to beginning and end
map("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
map("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
map("i", "<A-h>", "<Left>", { desc = "Move left" })
map("i", "<A-l>", "<Right>", { desc = "Move right" })
map("i", "<A-j>", "<Down>", { desc = "Move down" })
map("i", "<A-k>", "<Up>", { desc = "Move up" })

-- switch between windows
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- clear highlights
map("n", "<Esc>", "<cmd> noh <CR>", { desc = "Clear highlights" })

-- window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Buffer Navigation
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page and center the cursor" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page and center the cursor" })
map("n", "n", "nzzzv", { desc = "Move to the next search result and center the cursor" })
map("n", "N", "Nzzzv", { desc = "Move to the previous search result and center the cursor" })
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete Buffer" })

-- Search and replace word under cursor
map(
	"n",
	"<leader>rp",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Search and replace word under cursor" }
)

-- Source current file
map("n", "<leader><leader>", ":so<CR>", { desc = "Source current file" })

-- Save
map("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

-- File action
map("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })
map("n", "<C-a>", "ggVG", { desc = "Select whole file" })

-- New buffer
map("n", "<leader>b", "<cmd> enew <CR>", { desc = "New buffer" })

-- Move the current line / block
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Indent
map("v", "<", "<gv", { desc = "Indent line" })
map("v", ">", ">gv", { desc = "Indent line" })

-- Yank to system clipboard
map("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })

-- Paste without yanking
map("x", "<leader>p", [["_dP]])

-- Delete without yanking
map("n", "<leader>dx", [["_d]])
map("v", "<leader>dx", [["_d]])

-- Escape
map("i", "<C-c>", "<Esc>")
