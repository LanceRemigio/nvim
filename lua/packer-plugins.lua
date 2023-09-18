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
    -- Functionality
    use 'wbthomason/packer.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'akinsho/toggleterm.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind.nvim'
    -- Navigation
   use 'nvim-tree/nvim-tree.lua'
    use 'nvim-telescope/telescope.nvim'
    use 'ThePrimeagen/harpoon'
    -- use {
    --     "nvim-telescope/telescope-file-browser.nvim",
    --     requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    -- }
    -- Themes/UI elements
    use 'goolord/alpha-nvim'
    -- use 'shaunsingh/nord.nvim'
    use 'EdenEast/nightfox.nvim'
    -- use 'projekt0n/github-nvim-theme'
    -- use 'savq/melange-nvim'
    use 'catppuccin/nvim'
    -- use 'marko-cerovac/material.nvim'
    -- use 'Mofiqul/vscode.nvim'
    -- use 'mhartington/oceanic-next'
    -- use 'dasupradyumna/midnight.nvim'
    -- use 'xiyaowong/transparent.nvim'
    -- Tools
    use 'tpope/vim-commentary'
    use 'lukas-reineke/indent-blankline.nvim'
    use {'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require('hop').setup { 
                keys = 'etovxqpdygfblzhckisuran',
            }
        end,
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })   
    use 'windwp/nvim-autopairs'
    use 'L3MON4D3/Luasnip'
    use 'saadparwaiz1/cmp_luasnip' 
    use 'Pocco81/auto-save.nvim'
    use 'lervag/vimtex'
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    })
 if packer_bootstrap then
    require('packer').sync()
 end
end)
