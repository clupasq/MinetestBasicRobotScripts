function spiral(pos, radius, steps, material)
    material = material or { name = "default:stone" }
    for i = 1, steps, 1 do
        angle = i * 0.1
        elevation = i * 0.1
        bx = math.floor(pos.x + math.cos(angle) * radius)
        bz = math.floor(pos.z + math.sin(angle) * radius)
        by = math.floor(pos.y + elevation)
        minetest.set_node({x = bx, y = by + elevation, z = bz}, material)
    end
end

pos = self.spawnpos()
pos.x = pos.x + 2

spiral(pos, 15, 1000)


self.remove()

