return {
  'stevearc/conform.nvim',
  congfig = function()
    require('conform').setup({
      formatters_by_ft = {
        python = { "autopep8" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end,
}
