
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
    use 'andweeb/presence.nvim'
    -- Navigation
    use 'nvim-tree/nvim-tree.lua'
    use 'romgrk/barbar.nvim'
    use 'nvim-telescope/telescope.nvim'
    -- Themes/UI elements
    use 'glepnir/dashboard-nvim'
    use 'rmehri01/onenord.nvim'
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
    use 'matze/vim-tex-fold'
    use 'L3MON4D3/Luasnip'
    use 'Pocco81/auto-save.nvim'
    use 'frabjous/knap'
    use 'lervag/vimtex'
 if packer_bootstrap then
    require('packer').sync()
 end
end)
