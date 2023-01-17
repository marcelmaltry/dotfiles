local M = { }

function M.setup()

    ----- Bootstrap `packer` {{{----------------------------------------------------------------------------------------
    local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
    end
    --}}}---------------------------------------------------------------------------------------------------------------

    ----- Install/load plugins {{{--------------------------------------------------------------------------------------
    require('packer').startup(function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- Plugins -----------------------------------------------------------------------------------------------------
        use 'kaicataldo/material.vim'
        use 'ctrlpvim/ctrlp.vim'
        use 'preservim/nerdcommenter'
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use {
            'nvim-tree/nvim-tree.lua',
            requires = { 'nvim-tree/nvim-web-devicons', },
            tag = 'nightly'
        }

        -- Automatically set up your configuration after cloning packer.nvim.  Put this at the end after all plugins.
        if packer_bootstrap then
            require('packer').sync()
        end
    end)
    ---}}}--------------------------------------------------------------------------------------------------------------

end

return M
