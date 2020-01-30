pos = self.spawnpos()

size = 15
side = size * 2 + 1
block = { name = "default:sandstone" }
-- block = { name = "air" }

y = pos.y

for i = side, 1, -2 do

for j = 1, i do
  minetest.set_node({x=pos.x - size, y=y, z=pos.z - size + j}, block)
  minetest.set_node({x=pos.x + size, y=y, z=pos.z - size + j}, block)

  minetest.set_node({x=pos.x - size + j - 1, y=y, z=pos.z - size}, block)
  minetest.set_node({x=pos.x - size + j - 1, y=y, z=pos.z + size + 1}, block)
end




y = y + 1
size = size - 1

end


self.remove()


