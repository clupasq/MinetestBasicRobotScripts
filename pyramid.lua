
function pyramid(pos, size, material)

    material = material or { name = "default:sandstone" }
    side = size * 2 + 1

    y = pos.y

    for i = side, 1, -2 do

        for j = 1, i do
            minetest.set_node({ x=pos.x - size, y=y, z=pos.z - size + j }, material)
            minetest.set_node({ x=pos.x + size, y=y, z=pos.z - size + j }, material)
            minetest.set_node({ x=pos.x - size + j - 1, y=y, z=pos.z - size }, material)
            minetest.set_node({ x=pos.x - size + j - 1, y=y, z=pos.z + size + 1 }, material)
        end

        y = y + 1
        size = size - 1
    end
end

pyramid(self.spawnpos(), 15)

self.remove()


