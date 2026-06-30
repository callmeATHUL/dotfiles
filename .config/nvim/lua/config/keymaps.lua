-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function open_claude()
  Snacks.terminal("claude .", {
    cwd = vim.fn.getcwd(),
    win = {
      position = "right",
      width = 0.38,
    },
  })
end

vim.keymap.set("n", "aa", open_claude, { desc = "Claude terminal" })
vim.keymap.set("n", "<leader>aa", open_claude, { desc = "Claude terminal" })

