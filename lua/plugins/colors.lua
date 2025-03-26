return {
    {
        "HoNamDuong/hybrid.nvim",
        opts = {
            italic = {
                strings = false,
                emphasis = true,
                comments = false,
                folds = false,
            },
        },
    },
    {
        "erikbackman/brightburn.vim",
    }, {
    "alexxGmZ/e-ink.nvim",
},
    { "navarasu/onedark.nvim" },
    { "rose-pine/neovim" },
    {
        "tomasiser/vim-code-dark",
        config = function()
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
    {
        'AlexvZyl/nordic.nvim',
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load()
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    }
}
