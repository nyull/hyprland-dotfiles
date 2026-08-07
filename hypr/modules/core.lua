hl.config({
	general = {
		border_size = 1,
		gaps_in = 1,
		gaps_out = 3,
		col = {
			inactive_border = "rgba(0,0,0,1)",
			active_border = { colors = { "rgba(225,225,225,1)", "rgba(0,0,0,1)" }, angle = 270 },
		},

		layout = "dwindle",
		resize_on_border = true,
	},

	decoration = {
		rounding = 3,
		rounding_power = 2.0,
		active_opacity = 1,
		inactive_opacity = 0.70,
	},

	animation = {}, -- TODO: color change when switching active border
})
