return {
	{
		'nvimdev/dashboard-nvim',
		event = function()
			if vim.fn.argc() == 0 then
				return 'VimEnter'
			end
		end,
		cmd = "Dashboard",
		config = function ()
			local dash = require("dashboard")
			local map = vim.keymap.set

			map("n", "<leader>d", ":Dashboard<CR>", {desc = "Dashboard"})
			vim.opt_global.showtabline = 2

			dash.setup({
				theme = 'Hyper',
				shortcut_type = 'number',
				config = {
					week_header = {
						enable = true,
						append =  {'   ' .. 'May Be The Day to Avoid The Rabbit Hole' .. ' 󰵼 '},
					},
					disable_move = true,
					hide = {
						statusline = true,
						tabline = false,
					},
					shortcut = {
						{
							desc = "󰒲  Lazy ",
							group = "@text.todo",
							action = "Lazy",
							key = "l"
						},
						{ 
							desc = '󰊳  Update Plugins ',
							group = '@property',
							action = 'Lazy update',
							key = 'u'
						},
						{
							icon = '  ',
							icon_hl = '@variable',
							desc = 'Files',
							group = 'Label',
							action = 'Telescope find_files',
							key = 'f',
						},
						{
							desc = '  Browse Files ',
							group = 'DiagnosticHint',
							action = 'Telescope file_browser',
							key = 'a',
						},
						{
							desc = '  Chat GPT ',
							group = 'Number',
							action = '!open "https://chat.openai.com/"',
							key = 'c',
						},
					},
					project = {
						enable = true,
						limit = 8,
						icon = '💻 ',
						label = ' Projects working on',
						action = 'Telescope find_files cwd=',
					},
					mru = {
						limit = 8,
						icon = '🗂️',
						label = ' Recent files opened',
						cwd_only = false 
					},
					footer = {"🎱 Copyright Giuliano Dominici"}, -- footer
				},
			})
		end,
		dependencies = {
			{'nvim-tree/nvim-web-devicons'},
		},
	},
	{
		"folke/noice.nvim",
		event = {"BufReadPre", "BufNewFile"},
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			{
				"rcarriga/nvim-notify",
				config = function ()
					require('notify').setup({
						background_colour = "NotifyBackground",
						fps = 60,
						icons = {
							DEBUG = "",
							ERROR = "",
							INFO = "",
							TRACE = "✎",
							WARN = ""
						},
						level = 2,
						minimum_width = 50,
						render = "compact",
						stages = "fade",
						timeout = 500,
						top_down = true
					})
				end
			},
		},
		config = function ()
			require("noice").setup({
				lsp = {
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
			})
		end
	},
}
