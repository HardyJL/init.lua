vim.loader.enable()
vim.opt.winborder = "rounded"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.cursorcolumn = false
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.lsp.inline_completion.enable()
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "NONE" })
vim.opt.foldcolumn = "1"
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	foldsep = " ",
}
