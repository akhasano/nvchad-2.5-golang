return {

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- mine plugins here
  {
    "phaazon/hop.nvim",
    event = "BufReadPost",
    branch = "v2",
    config = function()
      require "configs.hop"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    -- opts = overrides.treesitter,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
          require "configs.treesitter-context"
        end,
      },
      {
        "abecodes/tabout.nvim",
        event = "InsertEnter",
        config = function()
          require "configs.tabout"
        end,
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    -- opts = overrides.nvimtree,
  },
  --
  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require "configs.better-escape"
    end,
  },
  {
    "williamboman/mason.nvim",
    -- opts = overrides.mason,
  },
  {
    "lewis6991/gitsigns.nvim",
    -- opts = overrides.gitsigns,
  },



  -- end mine plugins here
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
