return {
	"nvim-lualine/lualine.nvim",
	event = {"BufReadPre", "BufNewFile"},
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		opt = true
	},
	config = function()
		local option = vim.opt
		local map = vim.keymap.set
		local N = "n"
		local opt = {noremap = false, silent = true}

		option.showtabline = 2
		map(N, "<C-.>", "<cmd>bnext<CR>", opt)
		map(N, "<C-,>", "<cmd>bprev<CR>", opt)
		map(N, "<C-c", "<cmd>bdelete<CR>", opt)
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'auto',
				section_separators = { left = '', right = '' },
				-- component_separators = { left = '', right = '' }
				component_separators = { left = '', right = ''},
				-- section_separators = { left = '', right = ''},
				disabled_filetypes = {
					statusline = {"dashboard"},
					tabline = {"dasboard"},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
				}
			},
			sections = {
				lualine_a = {
					{
						'mode',
						icons_enabled = true,
						icon = "  "
					},
				},
				lualine_b = {
					{
						'branch',
						icon = {
							' ',
							color = {
								fg = 'white',
							},
						},
					},
					'diff',
					'diagnostics'
				},
				lualine_c = {
					{
						'filename',
						path = 4,
						symbols = {
							modified = '󰽂 ',
							readonly = '󱙃 ',
						},
					},
				},
				lualine_x = {
					{
						'fileformat',
						symbols = {
							unix = '',
						},
					},
					{
						'filetype',
						icon_only = true,
					},
				},
				lualine_y = {
					{
						'progress',
						icon = "",
					},
				},
				lualine_z = {
					{
						'location',
						icon = {"", color = {bold = true}},
					},
				},
			},
			tabline = {
				lualine_a = {
					{
						'filetype',
						'buffers',
						mode = 0,
						use_mode_colors = true,
						symbols = {
							modified = ' 󰽂 ',
							alternate_file = '#',
							directory =  ' ',
						},
					}
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {
					'searchcount',
					"os.date('󱑇 %H:%M')",
					"os.date(' %a%m%b')",
				},
			},
			extensions = {}
		}
	end,
}
