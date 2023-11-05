local keymap = vim.keymap

-- go to beginning and end
keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

-- clear highlights
keymap.set("n", "<Esc>", "<cmd> noh <CR>", { desc = "Clear highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- switch between windows
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- Buffer Navigation
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page and center the cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page and center the cursor" })
keymap.set("n", "n", "nzzzv", { desc = "Move to the next search result and center the cursor" })
keymap.set("n", "N", "Nzzzv", { desc = "Move to the previous search result and center the cursor" })
keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete Buffer" })

-- Search and replace word under cursor
keymap.set(
	"n",
	"<leader>rp",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Search and replace word under cursor" }
)

-- Source current file
keymap.set("n", "<leader><leader>", ":so<CR>", { desc = "Source current file" })

-- Save
keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

-- File action
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })
keymap.set("n", "<C-a>", "ggVG", { desc = "Select whole file" })

-- New buffer
keymap.set("n", "<leader>b", "<cmd> enew <CR>", { desc = "New buffer" })

-- Move the current line / block
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Indent
keymap.set("v", "<", "<gv", { desc = "Indent line" })
keymap.set("v", ">", ">gv", { desc = "Indent line" })

-- Yank to system clipboard
keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })

-- Paste without yanking
keymap.set("x", "<leader>p", [["_dP]])

-- Delete without yanking
keymap.set({ "n", "v" }, "<leader>dx", [["_d]])

-- Escape
keymap.set("i", "<C-c>", "<Esc>")
