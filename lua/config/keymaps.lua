-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.cmd("noremap <up> <nop>")
vim.cmd("noremap <Down> <Nop>")
vim.cmd("noremap <Left> <Nop>")
vim.cmd("noremap <Right> <Nop>")
vim.cmd("inoremap <Up> <Nop>")
vim.cmd("inoremap <Down> <Nop>")
vim.cmd("inoremap <Left> <Nop>")
vim.cmd("inoremap <Right> <Nop>")
vim.cmd("vnoremap im aBoV")
vim.cmd("nnoremap J 5j")
vim.cmd("nnoremap K 5k")
vim.cmd('nnoremap "" vi"')
vim.cmd("vnoremap am aBjoV")

-- vim.keymap.set("n", "<M-1>", ":ToggleTerm size=13.5 direction=horizontal<cr>", { silent = true })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", ":wa<cr>", { silent = true, desc = "Save Files" })
