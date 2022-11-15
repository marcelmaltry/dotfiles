local M = { }

function M.setup()

    ----- Global mappings {{{-------------------------------------------------------------------------------------------
    -- Sort visual lines
    vim.keymap.set('v', '<C-s>', ':sort i<CR>', { silent = true })

    -- Delete trailing whitespaces
    vim.keymap.set('n', '<BS>', ':%s/\\s\\+$//<CR>:w<CR>', { silent = true })

    ----- Plugin mappings {{{-------------------------------------------------------------------------------------------
    -- NERD Commenter
    vim.keymap.set('n', '<C-c>', ":call nerdcommenter#Comment('n', 'toggle')<CR>", { silent = true })
    vim.keymap.set('v', '<C-c>', ":call nerdcommenter#Comment('x', 'toggle')<CR>", { silent = true })

    -- nvim-tree
    vim.keymap.set('n', '<F2>', ':NvimTreeToggle<CR>', { silent = true })

end

return M
