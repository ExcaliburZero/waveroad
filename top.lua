---- Warp Code ----

local function warp(pos, i, player, node)
	local i = i
	local locp = { x = pos.x, y = pos.y - i, z = pos.z}
	local locplayp = { x = pos.x, y = pos.y - i + 2, z = pos.z}
	local n = minetest.env:get_node(locp).name
      if (n == "waveroad:waveroad_bottom") then
			player:setpos(locplayp)
			return true
		else
			return false
	 end
end


---- Node Registration ----

minetest.register_node("waveroad:waveroad_top", {
tiles = {{
		name="waveroad_top_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
description = "Wave Road Top",
groups={snappy=2,choppy=2,oddly_breakable_by_hand=2},
drop = "waveroad:waveroad_top",
diggable = "false",
sunlight_propagates = "true",
player = "",
on_punch = function(pos, node, puncher)
	local i = 1
	player = puncher
	while not warp(pos, i, player, node) do
		i = i + 1
		if i > 99 then
			break
		end
	end
	end,
})