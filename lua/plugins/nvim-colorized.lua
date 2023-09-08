return {
	'NvChad/nvim-colorizer.lua',
	event = "BufEnter *css",
	config = function()
		require("colorizer").attach_to_buffer(0, {
			mode = "virtualtext",
			RGB = true, -- #RGB hex codes
			RRGGBB = true, -- #RRGGBB hex codes
			names = true, -- "Name" codes like Blue or blue
			RRGGBBAA = false, -- #RRGGBBAA hex codes
			AARRGGBB = false, -- 0xAARRGGBB hex codes
			rgb_fn = true, -- CSS rgb() and rgba() functions
			hsl_fn = false, -- CSS hsl() and hsla() functions
			css = true,
			virtualtext = "■",
		})
	end,
}
