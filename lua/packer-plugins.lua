local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Functionality -- 
    use 'wbthomason/packer.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'akinsho/toggleterm.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind.nvim'
    use 'andweeb/presence.nvim'
    -- Navigation -- 
    use 'nvim-telescope/telescope.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    -- Themes/UI elements
    use 'shaunsingh/nord.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'lewpoly/sherbet.nvim'
    use 'kvrohit/mellow.nvim'
    use 'RRethy/nvim-base16'
    use 'projekt0n/github-nvim-theme'
    use 'catppuccin/nvim'
    use 'rmehri01/onenord.nvim'
    use 'bluz71/vim-moonfly-colors'
    -- use 'xiyaowong/transparent.nvim'
    -- Tools --
    use 'tpope/vim-commentary'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-cmdline'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn() end,
    })   
    use 'windwp/nvim-autopairs'
    use 'L3MON4D3/Luasnip'
    use 'saadparwaiz1/cmp_luasnip' 
    use 'lervag/vimtex'
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use 'frabjous/knap'
 if packer_bootstrap then
    require('packer').sync()
 end
end)
