---- Node Registration ----

minetest.register_node("waveroad:waveroad", {
tiles = {{
		name="waveroad.png",
		-- animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
description = "Wave Road",
sunlight_propagates = "true",
alpha = 100,
groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
drop = "waveroad:waveroad",
})