return {
	'voldikss/vim-floaterm',
	event = "VeryLazy",
	config = function ()
		vim.cmd[[nnoremap <leader>t :FloatermToggle<CR>]]
		vim.cmd[[tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>]]
	end
}
