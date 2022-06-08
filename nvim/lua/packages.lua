require('packer').startup(function()

  -- CMP setup
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'wbthomason/packer.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'tomasr/molokai'
  use 'nvim-lua/plenary.nvim'
  use 'junegunn/vim-plug'
  use 'nvim-treesitter/nvim-treesitter'
  use 'sharkdp/fd'
  use 'jacoborus/tender.vim'
  use 'vim-airline/vim-airline'
  use 'preservim/nerdtree'
  use {
    'goolord/alpha-nvim',
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
  use {
    'vimwiki/vimwiki',
    config = function()
      vim.g.vimwiki_list = {
        {
          path = '~/devenv/codevion.github.io/',
          syntax = 'markdown',
          ext = '.md',
        }
      }
      vim.g.vimwiki_ext2syntax = {
        ['.md'] = 'markdown',
        ['.markdown'] = 'markdown',
        ['.mdown'] = 'markdown',
      }
    end
  }
end)
