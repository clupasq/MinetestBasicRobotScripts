p = self.spawnpos()
erase    = { name = "air" }
material = { name = "default:stone" }

function run_step()

    if i == nil then
        i = 0
    else
        i = i + 1
    end

    if i > 30 then
        self.remove()
    end

    for j = -5,5 do
        minetest.set_node({ x = p.x - 10, y = p.y + 10 - i + 1, z = p.z + j}, erase)
        minetest.set_node({ x = p.x - 10, y = p.y + 10 - i, z = p.z + j}, material)
    end

end

run_step()

