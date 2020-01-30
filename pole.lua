for i = 1, 100, 2 do
  minetest.set_node({x=-160, y = 13 + i, z = -80}, { name = "wool:red" })
end

self.remove()
