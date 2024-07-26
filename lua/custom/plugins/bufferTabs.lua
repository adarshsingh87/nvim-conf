return {
    'tomiis4/BufferTabs.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
    lazy = false,
    config = function()
        require('buffertabs').setup({
            show_id = true,
            show_all = true,
            display = 'column',
            horizontal='right',
            vertical = 'center'
        })
    end
}
