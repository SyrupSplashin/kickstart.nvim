return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    -- keys = {
    --     {}
    -- },
    config = function()
        require("bufferline").setup{}
    end,

}
