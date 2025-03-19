vim.opt.cursorline = false -- Highlight the current line for better visibility
vim.opt.mouse = "a" -- Enable mouse support in all modes
vim.opt.clipboard = "unnamedplus" -- Use system clipboard for copy-paste
vim.opt.relativenumber = true

vim.opt.ignorecase = true -- Case-insensitive search...
vim.opt.smartcase = true -- ...unless uppercase letters are used
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.hlsearch = false -- Disable search highlight after search is done

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", extends = "→", precedes = "←" }
vim.opt.pumheight = 10 -- Limit pop-up menu height for better completion UI

vim.opt.lazyredraw = true -- Improve performance by reducing unnecessary UI redraws
vim.opt.updatetime = 250 -- Reduce time before swap file update & CursorHold event
vim.opt.timeoutlen = 500 -- Faster key sequence timeout (default is 1000ms)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.o.scroll = 10
vim.opt.wrap = false

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"
vim.opt.splitbelow = false
