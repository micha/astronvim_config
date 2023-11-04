return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "ntk148v/komau.vim",
    priority = 1000,
    -- event = "VeryLazy",
    config = function() vim.cmd.colorscheme "komau" end,
  },
  {
    "micha/vim-colors-off",
    priority = 1000,
    -- event = "VeryLazy",
    config = function() vim.cmd.colorscheme "off" end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    config = function()
      require("treesj").setup {
        use_default_keymaps = false,
      }
    end,
  },
  {
    "julienvincent/nvim-paredit",
    config = function() require("nvim-paredit").setup {} end,
    ft = { "clojure" },
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function() require("dap-python").setup "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python" end,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-vim-test",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-python",
          require "neotest-plenary",
          require "neotest-vim-test",
        },
      }
    end,
  },
  {
    "nvim-neotest/neotest-python",
    opts = {
      dap = { justMyCode = false },
    },
  },
  {
    "nvim-neotest/neotest-vim-test",
    opts = {
      ignore_file_types = { "python", "vim", "lua" },
    },
  },
  { "nvim-neotest/neotest-plenary" },
}
