local res = {}
    res.increment= 7
function res.move_box(character,dt)
    local Char = character
        handle_speed()
    if love.keyboard.isDown("up") then
        if Char.y>(res.increment+dt) then
            Char.y = Char.y-(res.increment+dt)
        end
    end

    if love.keyboard.isDown("down") then
        if Char.y < (love.graphics.getHeight()- Char.size )then
            Char.y = Char.y+(res.increment+dt)
        end
    end

    if love.keyboard.isDown("left") then
        if Char.x>(res.increment+dt) then
            Char.x = Char.x-(res.increment+dt)
        end
    end
    if love.keyboard.isDown("right") then
        if Char.x < (love.graphics.getWidth()- Char.size) then
            Char.x = Char.x+(res.increment+dt)
        end
    end


end

function handle_speed ()
   
    
    function love.keypressed(key)
        if key == "space" then
            res.increment = 15
        end
     end
    
    function love.keyreleased(key)
        if key == "space" then
        res.increment=7
        end
     end

  
end

return res