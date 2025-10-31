vim.pack.add({
	{ src = "https://github.com/HoNamDuong/hybrid.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{
		src = "https://github.com/Saghen/blink.cmp",
		version = "v1.7.0",
	},
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/mbbill/undotree" },
	{ src = "https://github.com/rmagatti/auto-session" },
	{ src = "https://github.com/wakatime/vim-wakatime" },
	{ src = "https://github.com/mfussenegger/nvim-dap" },
	{ src = "https://github.com/nvim-flutter/flutter-tools.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/mrcjkb/rustaceanvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/folke/sidekick.nvim" },
	{ src = "https://github.com/karb94/neoscroll.nvim" },
	{ src = "https://github.com/savq/melange-nvim" },
	{ src = "https://github.com/giuxtaposition/blink-cmp-copilot" },
	{ src = "https://github.com/zbirenbaum/copilot.lua" },
})

require("mason").setup()
require("oil").setup()
require("blink.cmp").setup({
	fuzzy = { implementation = "rust" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "copilot" },
		providers = {
			copilot = {
				name = "copilot",
				module = "blink-cmp-copilot",
				score_offset = 100,
				async = true,
			},
		},
	},
})
require("mini.pick").setup()
require("flutter-tools").setup()
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = {
			"ruff_fix",
			"ruff_format",
			"ruff_organize_imports",
		},
		rust = { "rustfmt", lsp_format = "fallback" },
	},
})
require("copilot").setup({
	suggestion = { enabled = false },
	panel = { enabled = false },
})
require("neoscroll").setup({ mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "zz", "<C-y>", "<C-e>" } })

vim.lsp.enable({ "lua_ls", "basedpyright" })
require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true,
	},
	ensure_installed = { "rust", "lua" },
	incremental_selection = { enable = true },
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>lf", function()
	require("conform").format()
end, opts)
vim.keymap.set("n", "grd", function()
	vim.lsp.buf.definition()
end, opts)
vim.keymap.set("n", "grD", function()
	vim.lsp.buf.declaration()
end, opts)
vim.keymap.set("n", "<leader>e", ":Oil<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>", opts)
vim.keymap.set("n", "<C-p>", ":Pick files tool='git'<CR>", opts)
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", opts)
vim.keymap.set("i", "<C-l>", function()
	-- Assuming you are using 'zbirenbaum/copilot.lua'
	local copilot = require("copilot.suggestion")
	if copilot.is_visible() then
		copilot.accept()
	else
		-- Fallback to default tab behavior if no copilot suggestion is visible
		vim.api.nvim_feedkeys("<Tab>", "n", false)
	end
end, { expr = true, silent = true, desc = "Copilot Accept" })

-- require("melange-nvim").setup({ transparent = true })
vim.cmd("colorscheme melange")

vim.cmd(":hi statusline guibg=NONE")
