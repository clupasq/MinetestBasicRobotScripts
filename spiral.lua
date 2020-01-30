pos = { x = -140, y = 15,  z = -87 }

pos.x = pos.x + 2

radius = 15

for i = 1, 1000, 1 do
  angle = i * 0.1
  elevation = i * 0.1
  bx = math.floor(pos.x + math.cos(angle) * radius)
  bz = math.floor(pos.z + math.sin(angle) * radius)
  by = math.floor(pos.y + elevation)
  minetest.set_node({x = bx, y = by + elevation, z = bz}, { name = "default:stone" })
end

self.remove()

