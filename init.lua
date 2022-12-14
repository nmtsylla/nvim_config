-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end
--
require("packer").init {
  profile = {
    enable = true,
    threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
  },
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
    prompt_border = "single"
  },
  max_jobs = 50,
  git = { clone_timeout = 600, },
  auto_clean = true,
  ensure_dependencies = true,
}

-- -- -- stylua: ignore start
require('packer').startup(function(use)
  use 'lewis6991/impatient.nvim'
  use 'wbthomason/packer.nvim' -- Package manager

  ------# UI packages ------

  use 'mjlbach/onedark.nvim' -- Theme inspired by Atom
  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use 'kyazdani42/nvim-web-devicons'

  use { 'kaicataldo/material.vim' }
  use { "j-hui/fidget.nvim" }
  use { 'akinsho/bufferline.nvim' }
  use { 'RRethy/vim-illuminate' }
  use { 'rcarriga/nvim-notify' }
  use {
    'declancm/cinnamon.nvim',
    config = function() require('cinnamon').setup() end
  }
  use { 'stevearc/dressing.nvim' }
  use { 'matbme/JABS.nvim' }
  ------# UI Packages ------

  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Add git related info in the signs columns and popups
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'nvim-treesitter/nvim-treesitter' -- Highlight, edit, and navigate code
  use 'nvim-treesitter/nvim-treesitter-textobjects' -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer' -- Automatically install language servers to stdpath
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  use { "rafamadriz/friendly-snippets" }
  use { 'L3MON4D3/LuaSnip', requires = { 'saadparwaiz1/cmp_luasnip' } } -- Snippet Engine and Snippet Expansion

  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
  use { 'nvim-telescope/telescope.nvim', wants = "friendly-snippets", requires = { 'nvim-lua/plenary.nvim' } } -- Fuzzy Finder (files, lsp, etc)

  -- undo history
  use 'mbbill/undotree'
  use 'glepnir/dashboard-nvim'
  use 'voldikss/vim-floaterm'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'famiu/bufdelete.nvim'
  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 }
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  -- use {
  --   'kyazdani42/nvim-tree.lua',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons', -- optional, for file icons
  --   },
  -- }
  -- use {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v2.x",
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --   }
  -- }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- use { 'mhartington/formatter.nvim' }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'windwp/nvim-autopairs' }
  use { 'windwp/nvim-ts-autotag' }
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }

  use { 'hrsh7th/vim-vsnip' }
  use { 'tpope/vim-rails' }
  use { 'vim-ruby/vim-ruby' }
  use { 'tpope/vim-endwise' }
  use { 'AndrewRadev/splitjoin.vim' }
  use { 'MaxMEllon/vim-jsx-pretty' }
  use { 'neoclide/vim-jsx-improve' }
  use { "NickyTope/yanks.nvim" }
  use { 'folke/trouble.nvim' }
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  use { 'anuvyklack/pretty-fold.nvim' }
  use { 'anuvyklack/fold-preview.nvim',
    requires = 'anuvyklack/keymap-amend.nvim',
  }

  use { "JoosepAlviste/nvim-ts-context-commentstring", after = "nvim-treesitter" }
  use { "Shatur/neovim-session-manager" }
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  if is_bootstrap then
    require('packer').sync()
  end
end)
-- -- stylua: ignore end

require('impatient')
require("base")
require("lualine_rc")
require("base_mapping")
require('comment_rc')
require('indent_blankline_rc')
require("gitsigns_rc")
require("telescope_rc")
require("treesitter_rc")
require("lsp_rc")
require("cmp_rc")
require("floatterm_rc")
require("nvim_tree_rc")
-- require("neotree_rc")
require("luasnip_rc")
-- require("formatter_rc")
require("null_ls_rc")
require("refactoring_rc")
require("bufdelete_rc")
require("autopairs_rc")
require("autotag_rc")
require("bufferline_rc")
require("trouble_rc")
require("pretty_fold_rc")
require("session_manager_rc")
require("dressing_rc")
require("jabs_rc")
--require("dashboard_rc")
-- require("illuminate_rc")
--
-- -- You'll need to restart nvim, and then it will work.
-- -- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})
-- auto format file on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
