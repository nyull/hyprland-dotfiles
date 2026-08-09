local filerer = "thunar"
local terminal = "kitty"
local menu = "rofi -show drun"

-- NOTE: For debugging only, comment out otherwise
hl.bind("SUPER + SHIFT + mouse:272", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(filerer))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + R", hl.dsp.exec_cmd(menu))
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))
hl.bind("SUPER + Q", hl.dsp.window.close())

hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + H", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "left" }))
for i = 1, 10 do -- automates workshop shifting from wrkshp 1 to 10
	local key = (i % 10)
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	hl.bind("SUPER +" .. key, function()
		hl.dispatch(hl.dsp.window.move({ workspace = i }))
	end)
end

hl.bind("mouse:272", hl.dsp.window.resize())
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + SHIFT + K", hl.dsp.window.resize({ x = 0, y = 20, relative, true }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.resize({ x = 0, y = -20, relative, true }))
hl.bind("SUPER + SHIFT + H", hl.dsp.window.resize({ x = -5, y = 0, relative, true }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.resize({ x = 5, y = 0, relative, true }))
hl.bind("SUPER + V", hl.dsp.window.float({}))
hl.bind("SUPER + S", hl.dsp.layout("togglesplit"))

--hl.bind("", hl.dsp)

hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = maximized }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = fullscreen }))
