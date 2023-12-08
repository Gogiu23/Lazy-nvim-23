return {
	'voldikss/vim-floaterm',
	keys = {
		{"<leader>t", ":FloatermToggle<CR>", desc = "FloatermToggle"},
	},
	config = function ()
		vim.cmd[[tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>]]
	end
}
