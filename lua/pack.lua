vim.pack.add({
	{ src = "https://github.com/HoNamDuong/hybrid.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{
		src = "https://github.com/Saghen/blink.cmp",
		version = "v1.7.0",
	},
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/mbbill/undotree" },
	{ src = "https://github.com/rmagatti/auto-session" },
	{ src = "https://github.com/wakatime/vim-wakatime" },
	{ src = "https://github.com/mfussenegger/nvim-dap" },
	{ src = "https://github.com/nvim-flutter/flutter-tools.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/mrcjkb/rustaceanvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{
		src = "https://github.com/folke/snacks.nvim",
	},
	{ src = "https://github.com/supermaven-inc/supermaven-nvim" },
	{ src = "https://github.com/chrisgrieser/nvim-origami" },
	{ src = "https://github.com/luukvbaal/statuscol.nvim" },
})

local builtin = require("statuscol.builtin")
require("statuscol").setup({
	setopt = true,
	ft_ignore = { "oil" }, -- filetypes to ignore
	segments = {
		{
			text = { builtin.lnumfunc, " " },
			condition = { true, builtin.not_empty },
			click = "v:lua.ScLa",
		},
		{
			text = { builtin.foldfunc, " " },
			click = "v:lua.ScFa",
		},
	},
})

require("origami").setup()
require("snacks").setup({
	picker = {
		enabled = true,
		sources = {
			explorer = {
				auto_close = true,
				layout = {
					preset = "sidebar",
					preview = false,
					layout = {
						position = "right",
						width = 30,
					},
				},
			},
		},
	},
	bigfile = { enabled = true },
	scroll = { enabled = true },
	explorer = { enabled = true },
	keys = {},
})
require("mason").setup()
require("blink.cmp").setup({
	fuzzy = { implementation = "rust" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
})
require("supermaven-nvim").setup({})
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
		xml = { "xmlformat" },
		html = { "xmlformat" },
		bash = { "shfmt" },
		sh = { "shfmt" },
	},
	formatters = {
		shfmt = {
			prepend_args = { "-i", "4", "-ci", "-sr" },
		},
	},
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 500,
	},
})

vim.lsp.enable({ "lua_ls", "basedpyright", "bashls" })
require("nvim-treesitter.config").setup({
	auto_install = true,
	highlight = {
		enable = true,
	},
	ensure_installed = { "lua" },
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
vim.keymap.set("n", "<leader>e", function()
	Snacks.explorer()
end, opts)
vim.keymap.set("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, opts)
vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, opts)
vim.keymap.set("n", "<leader>fg", function()
	Snacks.picker.grep()
end, opts)
vim.keymap.set("n", "<C-p>", function()
	Snacks.picker.git_files()
end, opts)
vim.keymap.set("n", "<leader>fh", function()
	Snacks.picker.help()
end, opts)
vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, opts)
vim.keymap.set("n", "<leader><space>", function()
	Snacks.picker.smart()
end, opts)

vim.keymap.set("n", "<leader>sg", function()
	Snacks.picker.grep()
end)

require("hybrid").setup({
	theme = "hybrid",
	transparent = true,
	styles = {
		sidebars = "transparent", -- Make sidebars (e.g., Telescope) transparent
		floats = "transparent", -- Make floating windows transparent
	},
	italic = {
		strings = false,
		emphasis = true,
		comments = false,
		folds = false,
	},
})

-- require("melange-nvim").setup({ transparent = true })
vim.cmd("colorscheme hybrid")

vim.cmd(":hi statusline guibg=NONE")
