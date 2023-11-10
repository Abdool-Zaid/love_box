local Str = require("./test/temp")
local Movement = require("moves")

function love.load()
    Box = {}
    Box.colR=0.4
    Box.colG=0.2
    Box.colB=0.4
    Box.size = 47
    Box.x = 10
    Box.y = 10
    
    love.graphics.setColor(Box.colR,Box.colG,Box.colB)
    Box.x=( love.graphics.getWidth()/2)- (Box.size/2)
    Box.y = (love.graphics.getHeight()/2)- (Box.size/2)
end

function love.update(dt)
    Movement.move_box(Box,dt)
end

function love.draw()
    love.graphics.rectangle("fill",Box.x,Box.y,Box.size,Box.size)

end