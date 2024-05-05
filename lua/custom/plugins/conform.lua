return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "luaformatter" },
                -- Conform will run multiple formatters sequentially
                python = { "yapf" },
                -- Use a sub-list to run only the first available formatter
                c = { "clang-format" }
            },
        })
    end
}
