return {
    { 'kyazdani42/nvim-tree.lua',
        dependencies = {
            'folke/which-key.nvim',
            'kyazdani42/nvim-web-devicons',
        },
        config = function()
            require'nvim-tree'.setup{
                view = { width = 40 },
            }
            require'which-key'.register({
                name = 'NVim Tree',
                ['<F2>'] = { '<cmd>NvimTreeToggle<cr>', 'Toggle NvimTree' },
            }, { silent = true })
        end,
    },
}
