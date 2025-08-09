vim.pack.add({
	{ src = "https://github.com/HoNamDuong/hybrid.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/mbbill/undotree" },
	{ src = "https://github.com/rmagatti/auto-session" },
	{ src = "https://github.com/wakatime/vim-wakatime" },
	{ src = "https://github.com/mfussenegger/nvim-dap" },
	{ src = "https://github.com/nvim-flutter/flutter-tools.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
})

require "mason".setup()
require "oil".setup()
require "blink.cmp".setup({ fuzzy = { implementation = "lua" } })
require "mini.pick".setup()
require"flutter-tools".setup()

-- LSP / Treesitter
vim.lsp.enable({ "lua_ls" })
require('nvim-treesitter.configs').setup({
	auto_install = true,
	highlight = {
		enable = true,
	},
})

-- Colors
require "hybrid".setup({ transparent = true })
vim.cmd("colorscheme hybrid")
vim.cmd(":hi statusline guibg=NONE")
