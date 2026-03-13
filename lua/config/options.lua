vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
vim.g.have_nerd_font = true
vim.loader.enable()
vim.lsp.inline_completion.enable()
vim.o.confirm = true
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorcolumn = false
vim.opt.foldcolumn = "1"
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.winborder = "rounded"
vim.opt.wrap = false
vim.o.signcolumn = "yes"
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 300
vim.o.undofile = true
vim.o.updatetime = 250
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	foldsep = " ",
}
