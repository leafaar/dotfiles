vim.opt.number = true
vim.opt.mouse = 'a'
-- Better colors
vim.opt.termguicolors = true

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+yg_')

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')

vim.g.mapLeader = " "

-- Map 'jj' to escape insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

-- Reduce the timeout for key sequences
vim.opt.timeoutlen = 200  -- in milliseconds (default is 1000)

-- Copy to clipboard
vim.keymap.set({'n', 'v'}, ',y', function()
  vim.cmd('normal! "+y')
  vim.notify("copied to clipboard!", vim.log.levels.INFO, { timeout = 1000 })
end, { noremap = true })
