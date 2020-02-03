
function allTableInTable(t1, t2)
    for k, v in pairs(t1) do
        if t2[k] ~= v then
            return false
        end
    end
    return true
end

function tableEql(t1, t2)
    return allTableInTable(t1, t2) and allTableInTable(t2, t1)
end

function makeFlatSurface(pos, sideLength, height, base_material)
    base_material = base_material or { name = "default:stone" }

    for i = 0, sideLength do
        for j = 0, sideLength do
            minetest.set_node({ x = pos.x + i, y = pos.y - 1, z = pos.z + j }, base_material)

            for h = 0, height do
                airpos = { x = pos.x + i, y = pos.y + h, z = pos.z + j }
                if not allTableInTable(airpos, self.spawnpos()) then
                    minetest.set_node(airpos, { name = "air" })
                end
            end
        end
    end

end

makeFlatSurface(self.spawnpos(), 40, 10)

self.remove()


