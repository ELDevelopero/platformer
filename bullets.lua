bullets = {}
bulletStartX = playerStartX
bulletStartY = playerStartY

function spawnBullet(x, y)
    local bullet = {}
    bullet.x, bullet.y = player:getPosition()
    bullet = world:newRectangleCollider(bullet.x, bullet.y, 20, 20, {collision_class = "Bullets"})
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
        b:setX(bx + b.speed * dt * b.direction)
    end
end

function destroyBullets(dt)
    for i = #bullets, 1, -1 do
        local b = bullets[i]
        if b:enter("Enemy") then
            --removes from the list
            destroyEnemy(dt)
            b:destroy() --destroys the collider and everything
            table.remove(bullets, i)
        elseif b:enter("Platform") then
            b:destroy() --destroys the collider and everything
            table.remove(bullets, i) --removes from the list
        end
    end
end
