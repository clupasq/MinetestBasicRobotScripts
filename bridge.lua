
function bridge(pos, hradius, vradius)
    midx = pos.x + hradius
    steps = 150
    for i = 1, steps, 1 do
        angle = i * (math.pi) / steps
        bx = math.floor(midx + math.cos(angle) * hradius)
        by = math.floor(pos.y + math.sin(angle) * vradius)
        minetest.set_node({x = bx, y = by, z = pos.z}, { name = "default:wood" })
    end
end

pos = self.spawnpos()
pos.x = pos.x + 2
bridge(pos, 50, 15)

self.remove()

