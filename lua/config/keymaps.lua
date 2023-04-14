vim.g.mapleader = " "
vim.g.maplocalleader = ","

local set = vim.keymap.set

-- better up/down
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- save file
set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- new file
set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- windows
set("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
set("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
set("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
set("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })
set("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
set("n", "<leader>|", "<C-W>v", { desc = "Split window right" })

-- tabs
set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- quit
set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

set("n", "<Leader>p", "<Cmd>Lazy<CR>", { desc = "Plugins" })
set('n', '<C-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })