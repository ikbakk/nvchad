return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment jjr format on save
    opts = require "configs.conform",
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = require "configs.nvimtree"
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function()
      require('../configs/codeium').setup()
    end
  },

  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   lazy = false,
  --   config = function()
  --     require("codeium").setup({
  --     })
  --   end
  -- },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },
}
