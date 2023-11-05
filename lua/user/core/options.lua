local opt = vim.opt

-- UI
opt.laststatus = 3 -- global statusline
opt.showmode = false
opt.cursorline = true
opt.mouse = "a"
opt.list = true
opt.sidescrolloff = 3
opt.wrap = false

-- Clipboard
opt.clipboard = "unnamedplus"

-- Timeoutlen
opt.timeoutlen = 100

-- Toggle number
opt.relativenumber = true
opt.number = true

-- isfname
opt.isfname:append("@-@")

-- Column
opt.textwidth = 80

-- Tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.fillchars = { eob = " " }

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wildignore = opt.wildignore + { "*/node_modules/*", "*/.git/*", "*/vendor/*" }
opt.wildmenu = true

-- autocomplete
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess = opt.shortmess + { c = true }

-- Term
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true

-- Scroll
opt.scrolloff = 10
opt.sidescrolloff = 3

-- perfomance
opt.redrawtime = 1500
opt.timeoutlen = 200
opt.ttimeoutlen = 10
opt.updatetime = 100

-- theme
opt.termguicolors = true

-- backups
opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.undofile = true

-- misc
opt.backspace = { "eol", "start", "indent" }
opt.clipboard = "unnamedplus"
opt.encoding = "utf-8"
opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }
opt.syntax = "enable"
