function sphere(refpos, size, node)

    for i = -size, size do
        for j = -size, size do
            for k = -size, size do
                d = math.sqrt(i * i + j * j + k * k)
                if d > 0 and d < size then
                    currentPos = { x=refpos.x + i, y=refpos.y + j, z=refpos.z + k}
                    minetest.set_node(currentPos, node)
                end
            end
        end
    end

end

p = self.spawnpos()

sphere(p, 20, {name="air"} )
sphere({x=p.x, y=p.y + 100, z = p.z }, 20, {name="default:stone"} )


self.remove()
