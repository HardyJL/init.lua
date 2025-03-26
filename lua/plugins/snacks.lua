return {
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    indent = { enabled = true },
    scroll = { enabled = true },
    words = { enabled = true },
    dashboard = { enabled = true, example = "compact_files" },
  },
    keys = {
        { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
        { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
        { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
        { "<leader>sl", function() Snacks.picker.loclist() end, desc = "Location List" },
    }    
}
