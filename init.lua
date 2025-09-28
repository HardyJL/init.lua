vim.g.mapleader = " "

require("options")
require("autocmds")
if vim.g.vscode then
		require("code")
else
		require("pack")
    -- ordinary Neovim
end
require("keymaps")
