local M = { }

function M.setup()

    ----- Material {{{--------------------------------------------------------------------------------------------------
    vim.g.material_theme_style = 'default'
    vim.cmd [[colorscheme material]]

    ----- CtrlP {{{-----------------------------------------------------------------------------------------------------
    if vim.fn.executable('ag') == 1 then
        vim.g.ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    elseif vim.fn.executable('ack') then
        vim.g.ctrlp_user_command = 'ack %s -l --nocolor""'
    end
    vim.g.ctrlp_custom_ignore = {
        ['dir']  = '\\v[\\/]\\.(git|hg|svn)$|build',
        ['file'] = '\\v\\.(exe|so|dll|a|dylib)$',
    }
    vim.g.ctrlp_cache_dir = os.getenv('HOME') .. '/.cache/ctrlp'

    ----- NERD Commenter {{{--------------------------------------------------------------------------------------------
    vim.g.NERDCreateDefaultMappings = 0
    vim.g.NERDAllowAnyVisualDelims = 1
    vim.g.NERDSpaceDelims = 1
    vim.g.NERDCompactSexyComs = 1
    vim.g.NERDTrimTrailingWhitespace = 1
    vim.g.NERDDefaultAlign = 'left'

    ----- lualine {{{---------------------------------------------------------------------------------------------------
    require('lualine').setup({
        options = {
            theme = require('material.lualine'),
        },
    })

    ----- nvim-tree {{{-------------------------------------------------------------------------------------------------
    require("nvim-tree").setup()

    ----- nvim-cmp --{{{------------------------------------------------------------------------------------------------
    require('cmp').setup({
        sources = {
            { name = 'buffer' },
            { name = 'spell' },
            { name = 'path' },
        }
    })

end

return M
