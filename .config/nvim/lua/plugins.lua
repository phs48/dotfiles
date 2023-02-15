return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- use 'Mofiqul/dracula.nvim'

  -- use {
  --   "mcchrish/zenbones.nvim",
  --   requires = "rktjmp/lush.nvim"
  -- }

  use 'folke/tokyonight.nvim'

  -- use {
  --   'lewis6991/gitsigns.nvim',
  --   requires = {
  --     'nvim-lua/plenary.nvim'
  --   },
  --   tag = 'release',
  --   config = function()
  --     require('gitsigns').setup()
  --   end
  -- }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      -- You dont need to set any of these options. These are the default ones. Only
      -- the loading is important
      require('telescope').setup {
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                            -- the default case_mode is "smart_case"
          }
        }
      }
      -- To get fzf loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require('telescope').load_extension('fzf')

      vim.cmd[[
        nnoremap <leader>ff <cmd>Telescope find_files<cr>
        nnoremap <leader>fg <cmd>Telescope live_grep<cr>
        nnoremap <leader>fb <cmd>Telescope buffers<cr>
        nnoremap <leader>fh <cmd>Telescope help_tags<cr>
      ]]
    end
  }

  -- use {
  --   'feline-nvim/feline.nvim',
  --   tag = 'v1.0.0',
  --   config = function ()
  --     require('feline').setup()
  --   end
  -- }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true
      }
    end
  }

  use {
    'ZhiyuanLck/smart-pairs',
    event = 'InsertEnter',
    config = function()
      require('pairs'):setup()
    end
  }

  -- use {
  --   "nanozuki/tabby.nvim",
  --   config = function() require("tabby").setup() end,
  -- }

  use 'wincent/terminus'

  use 'sheerun/vim-polyglot'

  use 'tpope/vim-repeat'

  use 'ggandor/lightspeed.nvim'

  use 'tpope/vim-vinegar'

  use 'dense-analysis/ale'

  use 'dstein64/vim-startuptime'
end)
