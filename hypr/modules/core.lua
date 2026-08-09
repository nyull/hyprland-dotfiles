hl.config({
	general = {
		border_size = 1,
		gaps_in = 2,
		gaps_out = 2,
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
		inactive_opacity = 0.95,
	},

	dwindle = {
		preserve_split = true,
	},
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeOutExpo", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("easy", { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "easeOutExpo" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "easeOutExpo", style = "slidevert" })
hl.animation({ leaf = "windows", enabled = true, speed = 2, bezier = "linear", style = "slide" })
