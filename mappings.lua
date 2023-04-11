-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<S-l>"] = { ":bnext<cr>", desc = "Next tab" },
    ["<S-h>"] = { ":bprev<cr>", desc = "Previous tab" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Modified move
    ["<M-k>"] = { "<S-{>", desc = "Move cursor up through paragraph" },
    ["<M-j>"] = { "<S-}>", desc = "Move cursor down through paragraph" },
    ["<M-h>"] = { "b", desc = "Alias" },
    ["<M-l>"] = { "w", desc = "Alias" },
    ["<M-,>"] = { "yyddkP", desc = "Move line up" },
    ["<M-m>"] = { "yyddp", desc = "Move line down" },
    ["<M-d>"] = { "bdw", desc = "Delete word from any position" },
    -- Find for Todo
    ["<leader>fT"] = { ":TodoTelescope<cr>", desc = "Find TodoTelescope" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
