local map = vim.keymap.set

map("n", "<C-/>", "<plug>NERDCommenterToggle", {noremap = true})

--MAPS FOR EVOLUTE THE (JKHL) KEYNOTES
map('n', 'L', '<end>', {noremap = true})
map('n', 'H', '<home>', {noremap = true})
map('i', 'jk', '<esc>', {noremap = true})
map('n', 'J', ':normal 10j<CR>', {noremap = true})
map('n', 'K', ':normal 10k<CR>', {noremap = true})

--AUTOINDENT
vim.api.nvim_set_keymap('n', '<leader><leader>', "gg=G''", {noremap = true})

--Rezize windows
map("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
----MOVE VISUAL STRINGS TROUGHT THE SCREEN
vim.cmd[[vnoremap <S-j> :m '>+1<CR>gv=gv]]
vim.cmd[[vnoremap <S-k> :m '<-2<CR>gv=gv]]

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

--Vim save
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

--get help file
map("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Key help tag" })

