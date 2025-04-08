return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        header = [[
██╗  ██╗ █████╗ ███╗   ██╗███████╗    ██████╗ ██╗████████╗████████╗███████╗██████╗
██║  ██║██╔══██╗████╗  ██║██╔════╝    ██╔══██╗██║╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗
███████║███████║██╔██╗ ██║███████╗    ██║  ██║██║   ██║      ██║   █████╗  ██████╔╝
██╔══██║██╔══██║██║╚██╗██║╚════██║    ██║  ██║██║   ██║      ██║   ██╔══╝  ██╔══██╗
██║  ██║██║  ██║██║ ╚████║███████║    ██████╔╝██║   ██║      ██║   ███████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝    ╚═════╝ ╚═╝   ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═╝
			]]
      },
      sections = {
        { section = "header" },
        -- { section = "terminal", cmd = "cbonsai -l", hl = "header", padding = 1, indent = 0, height = 25 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        }, -- { section = "terminal", cmd = "cowsay $(fortune -s)", hl = "header", padding = 1, indent = 10 },
        { section = "startup", icon = "" },
        function()
          local cwd = vim.fn.getcwd()
          local parent_dir, project_name = string.match(cwd, "(.-)/([^/]+)$")

          if parent_dir == nil then
            -- Handle the case where there's no slash (e.g., if cwd is just "/")
            parent_dir = ""
            project_name = cwd
          end

          return {
            align = "center",
            text = {
              { "at " .. parent_dir .. "/", hl = "footer" },
              { project_name,               hl = "special" },
              -- { cwd,                        hl = "special" },
            },
          }
        end
      },
    },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
        }
      },
    },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end,                                        desc = "Lazygit" },
    { "<leader>br", function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
    { "<leader>e",  function() Snacks.explorer() end,                                       desc = "File Explorer" },
    { "<leader>fb", function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>ff", function() Snacks.picker.files() end,                                   desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.git_files() end,                               desc = "Find Git Files" },
    { "<leader>fp", function() Snacks.picker.projects() end,                                desc = "Projects" },
    { "<leader>fr", function() Snacks.picker.recent() end,                                  desc = "Recent" },
  },
}
