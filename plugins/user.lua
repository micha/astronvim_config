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
  { "nvim-neotest/neotest-plenary" },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    config = function()
      require("flash").setup {
        modes = {
          search = { enabled = false },
        },
      }
    end,
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "echasnovski/mini.nvim",
    config = function() require("mini.files").setup() end,
    keys = {
      { "-", mode = { "n" }, function() MiniFiles.open() end, desc = "Open MiniFiles" },
    },
  },
  { "kevinhwang91/nvim-bqf", ft = "qf" },
  {
    "tummetott/unimpaired.nvim",
    event = "VeryLazy",
    config = function() require("unimpaired").setup {} end,
  },
  {
    "kchmck/vim-coffee-script",
    event = "VeryLazy",
  },
}
