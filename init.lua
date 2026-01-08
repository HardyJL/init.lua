vim.g.mapleader = " "

require("options")
require("autocmds")
require("keymaps")
if vim.g.vscode then
	require("code")
	vim.keymap.set("n", "u", "<cmd>silent! undo<cr>")
	vim.keymap.set("n", "<C-r>", "<cmd>silent! redo<cr>")
else
	require("pack")
	-- ordinary Neovim
end
