return {
  enabled = false,
  "akinsho/bufferline.nvim",
  version = "*",
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers",                -- Display buffers instead of tabs
        numbers = "none",                -- Hide buffer numbers
        show_buffer_close_icons = false, -- Clean, minimal look
        show_close_icon = false,
        always_show_bufferline = true,   -- Show even with one buffer
        custom_filter = function(buf_number)
          return vim.api.nvim_get_current_buf() == buf_number
        end,
        name_formatter = function(buf)
          return vim.fn.fnamemodify(buf.path, ":.")
        end,
        max_name_length = 100, -- Increase max length (default is 18)
        truncate_names = false, -- Disable
      },
    }
  end,
}
