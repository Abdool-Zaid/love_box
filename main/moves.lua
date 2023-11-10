local res = {}
    res.increment= 1
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
   
    if love.keyboard.isDown("z") then
        if res.increment < 15 then
            local x = math.abs(res.increment)+ 2
            res.increment= x
            print(res.increment)
        end
    end 
    
    if love.keyboard.isDown("x") then
        if res.increment > 2 then
            local x = math.abs(res.increment)- 2
            res.increment= x
            print(res.increment)
        end
    end 
    
   

  
end

return res