-- set leader key to space
vim.g.mapleader = " "
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', { noremap = true, silent = true })
local keymap = vim.keymap -- for conciseness

-- ... (rest of your configuration)

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>tP", "<cmd>bpre<CR>", { desc = "Go to previously opened tab" }) --  go to previous tab
keymap.set("n", "<leader>tN", "<cmd>bnext %<CR>", { desc = "Go to next opened tab" }) --  move current buffer to new tab
keymap.set("n", "<C-d>", "<C-d>:normal! H<CR>", { desc = "Ctrl+D followed by centering cursor" })
keymap.set("n", "<C-u>", "<C-u>:normal! H<CR>", { desc = "Ctrl+U followed by centering cursor" })
keymap.set("n", "<C-d>", "<C-d>zz>", { desc = "Ctrl+D followed by <zz>" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Ctrl+U followed by <zz>" })
