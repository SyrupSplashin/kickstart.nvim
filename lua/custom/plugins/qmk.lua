return {
    'codethread/qmk.nvim',
    config = function()
        require('qmk').setup{
            name = 'LAYOUT_split_3x6_3',
            layout = {
                '_ x x x x x x _ x x x x x x _',
                '_ x x x x x x _ x x x x x x _',
                '_ x x x x x x _ x x x x x x _',
                '_ _ _ _ x x x _ x x x _ _ _ _',
            },
        }
    end,
}
