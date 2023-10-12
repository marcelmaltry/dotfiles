return {
    {
        'kaicataldo/material.vim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.material_theme_style = 'default'
            vim.cmd [[colorscheme material]]
        end
    }
}
