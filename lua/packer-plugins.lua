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
    use 'nvim-lua/plenary.nvim'
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind.nvim'
    use 'andweeb/presence.nvim'
    -- use 'pocco81/auto-save.nvim'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    -- Navigation -- 
    use 'nvim-telescope/telescope.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    -- Themes/UI elements
    use 'EdenEast/nightfox.nvim'
    use 'shaunsingh/nord.nvim'
    use 'sainnhe/gruvbox-material'
    use 'rebelot/kanagawa.nvim'
    -- use 'RRethy/base16-nvim'
    use {
        "rockyzhang24/arctic.nvim",
        requires = { "rktjmp/lush.nvim" }
    }
    use 'kepano/flexoki-neovim'
    -- Tools --
    use 'tpope/vim-commentary'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-cmdline'
    use 'windwp/nvim-autopairs'
    use 'L3MON4D3/Luasnip'
    use 'saadparwaiz1/cmp_luasnip' 
    use 'lervag/vimtex'
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    -- random --
    use {
        'nvzone/typr',
        requires = {
            'nvzone/volt'
        }
}
 if packer_bootstrap then
    require('packer').sync()
 end
end)
