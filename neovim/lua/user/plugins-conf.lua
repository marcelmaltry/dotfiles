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
    local cmp = require'cmp'

    cmp.setup({
        sources = {
            { name = 'buffer' },
            { name = 'spell' },
            { name = 'path' },
            { name = 'nvim_lsp'},
        },
        mapping = cmp.mapping.preset.insert{
            ['<C-b>'] = cmp.mapping.scroll_docs(8),
            ['<C-f>'] = cmp.mapping.scroll_docs(-8),
            ['<C-n>'] = cmp.mapping.select_next_item(),
            ['<C-p>'] = cmp.mapping.select_prev_item(),
            ['<C-e>'] = cmp.mapping.abort(),
        },
        sorting = {
            comparators = {
                cmp.config.compare.offset,
                cmp.config.compare.exact,
                cmp.config.compare.recently_used,
                cmp.config.compare.kind,
                cmp.config.compare.sort_text,
                cmp.config.compare.length,
                cmp.config.compare.order,
            },
        },
    })

    ----- which-key --{{{-----------------------------------------------------------------------------------------------
    require("which-key").setup()

    ----- mason --{{{---------------------------------------------------------------------------------------------------
    require("mason").setup({
        automatic_installation = true
    })
    require("mason-lspconfig").setup()

    local capabilities = require'cmp_nvim_lsp'.default_capabilities()

    local on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        if client.server_capabilities.goto_definition == true then
            vim.api.nvim_buf_set_option(bufnr, "tagfunc", 'v:lua.vim.lsp.tagfunc')
        end

        if client.server_capabilities.document_formatting == true then
            vim.api.nvim_buf_set_option(bufnr, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')
        end

        -- Mappings. See `:help vim.lsp.*` for documentation on any of the below functions
        local bufopts = { noremap=true, silent=true, buffer=bufnr }

        local wk = require'which-key'
        local buf = vim.lsp.buf

        wk.register({
            name = 'LSP',
            g = {
                d = { function() buf.declaration() end, 'Goto declaration' },
                D = { function() buf.definition() end, 'Goto definition' },
                i = { function() buf.implementation() end, 'Goto implementation' },
                t = { function() buf.type_definition() end, 'Goto type definition' },
            },
            h = {
                h = { function() buf.hover() end, 'Tooltip for item under cursor' },
                s = { function() buf.signature_help() end, 'Show signature help' },
                r = { function() buf.references() end, 'Show references' },
                -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
            },
            ['rn'] = { function() buf.rename() end, 'Refactor rename item under cursor' },
            ['ca'] = { function() buf.code_action() end, 'Perform code action for item under cursor' },
            ['cf'] = { function() buf.formatting() end, 'Perform formatting (whole file)' },
            ['<tab>'] = { '<cmd>ClangdSwitchSourceHeader<cr>', 'Switch between source/header file' },
            ['s<tab>'] = { '<cmd>split<cr><cmd>ClangdSwitchSourceHeader<cr>', 'Open source/header file in horizontal split' },
            ['v<tab>'] = { '<cmd>vsplit<cr><cmd>ClangdSwitchSourceHeader<cr>', 'Open source/header file in vertical split' },
        }, { prefix = '<leader>', buffer = bufnr })
    end

    require('lspconfig')['clangd'].setup{
        on_attach = on_attach,
        capabilities = capabilities,
    }

end

return M
