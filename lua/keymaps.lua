-- MAPS FOR THE COMMON USE
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true}) --save with Ctrl-s
--MAPS FOR EVOLUTE THE (JKHL) KEYNOTES
vim.api.nvim_set_keymap('n', 'L', '<end>', {noremap = true})
vim.api.nvim_set_keymap('n', 'H', '<home>', {noremap = true})
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap = true})
vim.api.nvim_set_keymap('n', 'J', ':normal 10j<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'K', ':normal 10k<CR>', {noremap = true})

--AUTOINDENT
vim.api.nvim_set_keymap('n', '<leader><leader>', 'gg=G\'\'', {noremap = true})

--SOURCE INIT.LUA
vim.cmd[[nnoremap <leader>e :source ~/.config/nvim/init.lua<CR>]]
--
----MOVE VISUAL STRINGS TROUGHT THE SCREEN
vim.cmd[[vnoremap <S-j> :m '>+1<CR>gv=gv]]
vim.cmd[[vnoremap <S-k> :m '<-2<CR>gv=gv]]

---- MAPS FOR THE NvimTreeToggle
vim.cmd[[nnoremap <space> :NvimTreeToggle<CR>]]

---- MAPS FOR THE FLOATERM
vim.cmd[[nnoremap <leader>t :FloatermToggle<CR>]]
vim.cmd[[tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>]]

--UNDOTREE TOGGLE
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', {noremap = true})
--
--KEYMAPS GLANCE.NVIM
--vim.keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
--vim.keymap.set('n', 'gR', '<CMD>Glance references<CR>')
--vim.keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
--vim.keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')
--
----IMPLEMENTATION VIM FUGITIVE
--vim.api.nvim_set_keymap('n', '<leader>g', '<CMD>Git<CR>', {noremap = true})
--vim.api.nvim_set_keymap('n', '<leader>gc', '<CMD>Git commit<CR>', {noremap = true})
--vim.api.nvim_set_keymap('n', '<leader>g+', '<CMD>Git push<CR>', {noremap = true})
--
---- VIM COMMENTER
vim.cmd[[map <C-/> <plug>NERDCommenterToggle]]

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
