-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(
    --       function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
    --     )
    --   end,
    --   desc = "Pick to close",
    -- },
    -- -- tables with the `name` key will be registered with which-key if it's installed
    -- -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },

    -- TreesJ
    ["tj"] = { ":TSJJoin<CR>", desc = "Join code block" },
    ["ts"] = { ":TSJSplit<CR>", desc = "Split code block" },
    ["tt"] = { ":TSJToggle<CR>", desc = "Split or join code block with autodetect" },
    ["t"] = { name = "TreesJ" },

    -- Neotest
    ["<leader>TT"] = {
      function() require("neotest").run.run { vim.fn.expand "%", strategy = "dap" } end,
      desc = "Tests in file via DAP",
    },
    ["<leader>Tt"] = {
      function() require("neotest").run.run { vim.fn.expand "%", strategy = "dap" } end,
      desc = "Nearest test via DAP",
    },
    ["<leader>Tl"] = {
      function() require("neotest").run.run_last() end,
      desc = "Re-run last test",
    },
    ["<leader>Ts"] = {
      function() require("neotest").summary.toggle() end,
      desc = "Toggle summary",
    },
    ["<leader>T"] = { name = "Neotest" },

    -- Misc. mappings
    ["aj"] = { "i<cr><esc>w", desc = "Move word to next line" },
    ["<CR>"] = { ":noh<CR>", desc = "Toggle search highlighting" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
