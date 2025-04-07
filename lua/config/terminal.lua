local M = {}

-- Global variable to store the terminal buffer ID
vim.g.persistent_term_buf = nil

-- Function to open or switch to the persistent terminal
function M.toggle_persistent_terminal()
  -- If the buffer exists and is valid, switch to it
  if vim.g.persistent_term_buf and vim.api.nvim_buf_is_valid(vim.g.persistent_term_buf) then
    vim.api.nvim_set_current_buf(vim.g.persistent_term_buf)
  else
    -- Create a new terminal buffer in the current window
    vim.cmd("terminal")
    vim.g.persistent_term_buf = vim.api.nvim_get_current_buf()
    -- Hide the buffer instead of closing it when switched away
    vim.api.nvim_buf_set_option(vim.g.persistent_term_buf, "bufhidden", "hide")
  end
end

-- Set up single Escape to exit terminal mode only in this buffer
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if vim.api.nvim_get_current_buf() == vim.g.persistent_term_buf then
      -- Map <Esc> to exit terminal mode in this buffer
      vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { buffer = vim.g.persistent_term_buf, noremap = true, silent = true })
    end
  end,
})

return M
