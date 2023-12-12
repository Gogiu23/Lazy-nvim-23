return {
	{
		'RRethy/vim-illuminate'
	},
	{
		'mbbill/undotree',
		event = "VeryLazy",
		config =function ()
			vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', {noremap = true})
		end
	},
	{
		'udalov/kotlin-vim',
		ft = "kt",
	},
	{
		'turbio/bracey.vim',
		ft = "html",
	},
	{
		'numToStr/Comment.nvim',
		keys = {
			{"g", desc = "Comment"},
		},
		config = function ()
			require('Comment').setup({})
		end
	},
}
