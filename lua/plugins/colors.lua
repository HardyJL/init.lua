return {
	{
		"vague-theme/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		-- priority = 1000, -- make sure to load this before all the other plugins
		-- config = function()
		-- 	-- NOTE: you do not need to call setup if you don't want to.
		-- 	require("vague").setup({
		-- 		transparent = true,
		-- 		-- colors = {
		-- 		-- 	bg = "#181818",
		-- 		-- },
		-- 		-- optional configuration here
		-- 	})
		-- 	vim.cmd("colorscheme vague")
		-- end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},
			})
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
