return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local telescope = require("telescope")
		--local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				theme = "center",
				border = true,
				sorting_strategy = "ascending",
				layout_strategy = "flex",
				layout_config = {
					prompt_position = "top",
				},
				prompt_prefix = "󱎸  ",
				selection_caret = " ",
				multi_icon = " ",
				path_display = {
					truncate = 3,
				},
				initial_mode = "normal",
				file_ignore_patterns = {'node_modules'},
				color_devicons = true,
				mappings = {
					n = {
						["q"] = require("telescope.actions").close
					},
				},
			},
			pickers = {
				-- Default configuration for builtin pickers goes here:
				-- picker_name = {
					--   picker_config_key = value,
					--   ...
					-- }
					-- Now the picker_config_key will be applied every time you call this
					-- builtin picker
				},
				extensions = {
					-- Your extension configuration goes here:
					-- extension_name = {
						--   extension_config_key = value,
						-- }
						-- please take a look at the readme of the extension you want to configure
					},
				})
				local TelescopePrompt = {
					TelescopePromptNormal = {
						bg = '#f91651',
					},
					TelescopePromptBorder = {
						fg = '#f91651',
						bg = '#f91651',
					},
					TelescopePromptTitle = {
						fg = 'white',
						bg = '#f91651',
					},
					TelescopePromptPrefix = {
						fg = 'white',
						bg = '#f91651',
					},
					TelescopePreviewNormal = {
						fg = 'white',
						bg = '#17202A',
					},
					TelescopePreviewBorder = {
						fg = '#f91651',
						bg = '#17202A',
					},
					TelescopePreviewHyphen = {
						fg = 'white',
						bg = '#17202A',
					},
					TelescopePreviewTitle = {
						fg = 'white',
						bg = '#f91651',
						--bg = '#17202A',
					},
					--Results Telescope
					TelescopeResultsClass = {
						--bg = '#17202A',
					},
					TelescopeResultsField = {
						--bg = '#17202A',
					},
					TelescopeResultsComment = {
						--bg = '#17202A',
					},
					TelescopeResultsConstant = {
						--bg = '#17202A',
					},
					TelescopeResultsFunction = {
						--bg = '#17202A',
					},
					TelescopeResultsIdentifier = {
						--bg = '#17202A',
					},
					TelescopeResultsSpecialComment = {
						--bg = '#17202A',
					},

					TelescopeResultsTitle = {
						fg = 'white',
						--bg = '#f91651',
					},
					TelescopeResultsBorder = {
						fg = '#f91651',
					},
					TelescopeResultsNormal = {
						fg = 'white',
						--bg = '#17202A',
					},
					TelescopeResultsMethod = {
						fg = 'white',
						--bg = '#17202A',
					},
					TelescopeResultsStruct = {
						fg = 'white',
						--bg = '#17202A',
					},
					TelescopeResultsOperator = {
						fg = 'white',
						--bg = '#17202A',
					},

					TelescopeResultsVariable = {
						fg = 'white',
						--bg = '#17202A',
					},
				}
				for hl, col in pairs(TelescopePrompt) do
					vim.api.nvim_set_hl(0, hl, col)
				end
				telescope.load_extension("fzf");
				local map = vim.keymap.set
				map("n", "<C-f>", "<cmd>Telescope find_files<cr>", {desc = "Find files"})
				map("n", "<C-g>", "<cmd>Telescope live_grep<cr>", {desc = "Live grep"})
				map("n", "<space>", "<cmd>lua require'telescope'.extensions.file_browser.file_browser{cwd=''}<CR>", {})
				--		keymap.set("n", "<leader>fb", builtin.buffers, {})
				--		keymap.set("n", "<leader>fh", builtin.help_tags, {})
			end
		}
