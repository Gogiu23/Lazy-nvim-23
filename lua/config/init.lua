require('config.keymaps')
require('config.options')
require('config.autocmds')
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


local opts = {
	defaults = {
		lazy = false,
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrw",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},
	icons = {
		cmd = " ",
		config = "",
		event = "",
		ft = " ",
		init = " ",
		import = " ",
		keys = " ",
		lazy = "󰒲 ",
		loaded = "●",
		not_loaded = "○",
		plugin = " ",
		runtime = " ",
		source = " ",
		start = "",
		task = "✔ ",
		list = {
			"●",
			"➜",
			"★",
			"‒",
		},
	},
	change_detection = {
		-- automatically check for config file changes and reload the ui
		enabled = false,
		notify = false, -- get a notification when changes are found
	},
	checker = {
		-- automatically check for plugin updates
		enabled = false,
		concurrency = nil, ---@type number? set to 1 to check for updates very slowly
		notify = false, -- get a notification when new updates are found
		frequency = 3600, -- check for updates every hour
	},
}

require("lazy").setup({
	spec = {
		{import = "plugins"},
		{import = "plugins.lsp"},
	},
	opts
})
