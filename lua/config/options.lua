vim.loader.enable()

vim.opt.clipboard = "unnamedplus" -- Use system clipboard for copy-paste
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.conceallevel = 1
vim.opt.winborder = "rounded"

vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.ignorecase = true -- Case-insensitive search...
vim.opt.smartcase = true -- ...unless uppercase letters are used
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.hlsearch = false -- Disable search highlight after search is done

vim.opt.updatetime = 50
vim.opt.timeoutlen = 250
vim.o.scroll = 10

vim.opt.termguicolors = true
vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "100"
vim.g.netrw_liststyle = 3 -- Tree-style view
vim.g.netrw_banner = 0 -- Hide the banner
vim.g.netrw_winsize = 25 -- Set width to 25% of the window
