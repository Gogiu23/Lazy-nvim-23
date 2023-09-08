return {
	'nvimdev/lspsaga.nvim',
	config = function()
		local keymap = vim.keymap
		keymap.set('n', 'K', '<cmd>lspsaga hover_doc')
		require('lspsaga').setup({})
	end,
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- optional
		'nvim-tree/nvim-web-devicons',     -- optional
	}
}
