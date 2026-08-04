local filerer = "thunar"
local terminal = "kitty"
local menu = "wofi --show drun"
hl.bind("SUPER + E", hl.dsp.exec_cmd(filerer))
hl.bind("SUPER + ENTER", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + R", hl.dsp.exec_cmd(menu))

hl.bind("SUPER + Q", hl.dsp.window.close({}))

hl.bind("SUPER + K", hl.dsp.focus({ direction = u }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = d }))
hl.bind("SUPER + H", hl.dsp.focus({ direction = r }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = l }))
for i = 1, 10 do -- automates workshop shifting from wrkshp 1 to 10
	local key = (i % 10)

	hl.bind("SUPER +" .. key, function()
		hl.dispatch(hl.dsp.window.move({ workspace = key }))
	end)
end

hl.bind("mouse:272", hl.dsp.resize())
hl.bind("SUPER + mouse:272", hl.dsp.drag())
hl.bind("SUPER + SHIFT + K", hl.dsp.resize({ y = 20 }))
hl.bind("SUPER + SHIFT + J", hl.dsp.resize({ y = -20 }))
hl.bind("SUPER + SHIFT + H", hl.dsp.resize({ x = -5 }))
hl.bind("SUPER + SHIFT + L", hl.dsp.resize({ x = 5 }))
hl.bind("SUPER + V", hl.dsp.window.float({}))

hl.bind("", hl.dsp) --boilerplate, for copypasting

hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = maximized }))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = fullscreen }))

for i = 1, 10 do -- automates workshop shifting from wrkshp 1 to 10
	local key = (i % 10)

	hl.bind("SUPER +" .. key, function()
		hl.dispatch(hl.dsp.window.move({ workspace = key }))
	end)
end
