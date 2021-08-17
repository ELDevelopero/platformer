bullets = {}
bulletStartX = playerStartX
bulletStartY = playerStartY
--

--function spawnBullet(x,y)
--local bullet=world:newRectangleCollider(x,y, 64,64, {collision_class="Bullet"})
--bullet:setGravityScale(0)
--bullet.animation=animations.bullet
--table.insert(bullets,bullet)
--end

--[[function bulletDirection()
local bx,by=player:getPosition()
    if love.keyboard.isDown('right') then
        bullet=player:getDirection()
        
    end
    if love.keyboard.isDown('left') then
        bullet=player:getDirection()*-1
end
end
]] function spawnBullet(
    x,
    y)
    local bullet = {}
    bullet.x, bullet.y = player:getPosition()
    --bullet:setCollisionClass('Bullet')
    bullet = world:newRectangleCollider(bullet.x, bullet.y, 20, 20, {collision_class = "Bullets"})

    -- bullet.y=player:getPosition()
    bullet.speed = 500
    bullet.direction = player.direction
    bullet.dead = false
    bullet.animation = animations.bullet
    bullet:setGravityScale(0)
    table.insert(bullets, bullet)
end

function drawBullets(dt) --lucreaza
    for i, b in ipairs(bullets) do
        local bx, by = b:getPosition()
        b.animation:draw(sprites.bullet, bx, by, nil, 0.5, 0.5, 32, 32) --32 32 is to move the collider rectangle in the middle of the object, it is half the image size
    end
end

function bulletsUpdate(dt) --makes the bullets to move into the right direction
    for i, b in ipairs(bullets) do
        local bx = b:getPosition()
        -- b.x=b.x+(b.direction)*b.speed*dt  --direction of flying bullets, changes direction, based on the player direction.
        b:setX(bx + b.speed * dt * b.direction)
        --b.y=b.y+(b.direction)*b.speed*dt
    end

    --contact:setEnabled(false)
end

function destroyBullets(dt)
    for i = #bullets, 1, -1 do
        local b = bullets[i] --c stores the coin that is being touched only and not all of them
        if b:enter("Enemy") then
            --removes from the list
            --destroyEnemy()
            b:destroy() --destroys the collider and everything
            table.remove(bullets, i)
        elseif b:enter("Platform") then
            b:destroy() --destroys the collider and everything
            table.remove(bullets, i) --removes from the list
        end
    end
end
--[[
function drawBullets()

    --for i,b in ipairs(bullets) do
        --local bx,by =b:getPosition()
        --b.animation:draw(sprites.bullet,bx,by,b.player.direction,nil,nil,32,32) --32 32 is to move the collider rectangle in the middle of the object, it is half the image size
        for i,b in ipairs(bullets) do
            love.graphics.draw(sprites.bullet, b.x,b.y,nil,0.5*player.direction, nil, sprites.bullet:getHeight()/2, sprites.bullet:getWidth()/2)  --bullets work but without it invisible
        end
        

    
end

function bulletsUpdate(dt)
    if player.direction==1 then
        for i,b in ipairs(bullets) do
        
            b.x=b.x+(math.cos(b.direction)*b.speed*dt)
            
           
            --b.y=b.y+(math.sin(b.direction)*b.speed*dt)
            --b.x=b.x+(player.direction*b.speed)
            --b.y=b.y+(player.direction*b.speed)
       
            --b.x=b.x+(math.cos(b.direction)*b.speed*dt)
               
       end

        
                --b.x=b.x-(math.cos(player.direction)*b.speed*dt)
    end
    if player.direction==-1 then
        for i,b1 in ipairs(bullets) do
          
                b1.x=b1.x-(math.cos(b1.direction)*b1.speed*dt)
                b1.direction=b1.direction*-1
                
                --b.y=b.y+(math.sin(player.direction)*b.speed*dt)
    

    
                --b.y=b.y+(math.sin(player.direction)*b.speed*dt)
        end
    end


   -- for i=#bullets,1,-1 do
       -- local b=bullets[i]
       -- if b.x<0 or b.y<0 or b.x>love.graphics.getWidth() or b.y>love.graphics.getHeight() then
       --     table.remove(bullets,i) --table.remove, removes backwards from list
       -- end

    --end
    for i=#bullets,1,-1 do
        local b=bullets[i]
        if b.dead==true then
            table.remove(bullets,i)
        end
    end
    
end

]]
--
