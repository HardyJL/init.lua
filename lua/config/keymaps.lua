vim.keymap.set("n", "J", "mzJ`z", { desc = "Join current line with next and return to cursor position" })
vim.keymap.set(
	{ "i", "n" },
	"<leader>;",
	"A;<Esc>",
	{ desc = "Append a semicolon at the end of the line and return to normal mode" }
)

vim.keymap.set("n", "<leader>q", "<CMD>q<CR>")
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>")
vim.keymap.set(
	"x",
	"<leader>p",
	[["_dP]],
	{ desc = "Delete selection without modifying system clipboard and paste it back" }
)

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down one page and recenter the cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up one page and recenter the cursor" })

vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")

vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "^")
vim.keymap.set("n", "gf", "0")
vim.keymap.set("n", "mm", "%")

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>Telescope buffers<cr>", { desc = "Look at buffer List" })
-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit Terminal Mode" })
vim.keymap.set("t", "J", "i<Up><Cr><C-\\><C-n>")

-- New terminal keymap
local terminal = require("config.terminal")
vim.keymap.set("n", "<leader>t", terminal.toggle_persistent_terminal, { desc = "Toggle persistent terminal" })
