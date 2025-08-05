vim.opt.winborder = "rounded"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.cursorcolumn = true
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.signcolumn = "yes"

local map = vim.keymap.set

vim.g.mapleader = " "
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')

vim.pack.add({
	{ src = "https://github.com/marko-cerovac/material.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/echasnovski/mini.pick" },
})

require "oil".setup()

map('n', '<leader>e', ":Oil<CR>")
map('n', '<leader>lf', vim.lsp.buf.format)
map('n', '<leader>ff', ":Pick files<CR>")
map('n', '<C-p>', ":Pick files tool='git'<CR>")
map('n', '<leader>fh', ":Pick help<CR>")

vim.lsp.enable({ "lua_ls" })

vim.g.material_style = "darker"
require "material".setup({ disable = { background = true } })
vim.cmd("colorscheme material")
vim.cmd(":hi statusline guibg=NONE")
