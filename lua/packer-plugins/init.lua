return require('packer').startup(function()
    -- Functionality
    use 'wbthomason/packer.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    -- Navigation
    use 'nvim-tree/nvim-tree.lua'
    use 'romgrk/barbar.nvim'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'nvim-telescope/telescope.nvim'
    -- Themes/UI elements
    use 'glepnir/dashboard-nvim'
    use 'EdenEast/nightfox.nvim'
    -- Tools
    use 'tpope/vim-commentary'
    use 'neoclide/coc.nvim'
    use 'matze/vim-tex-fold'
    use 'Pocco81/auto-save.nvim'
    use 'SirVer/ultisnips'
    use 'lervag/vimtex'
end)
