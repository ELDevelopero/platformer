playerStartX = 360
playerStartY = 100
playerLife = 1
deadTimer = 0

player = world:newRectangleCollider(playerStartX, playerStartY, 40, 130, {collision_class = "Player"})
player.body:setFixedRotation(true) --player not rotating when falling from the platform
player.speed = 240
--player.animation=animations.idle
player.isMoving = false
player.direction = 1
player.grounded = true
player.isDead = false

function playerUpdate(dt)
    if player.body then
        local colliders = world:queryRectangleArea(player:getX() - 20, player:getY() + 65, 38, 2, {"Platform"})
        local collidersEnemy = world:queryRectangleArea(player:getX() - 20, player:getY() + 65, 36, 16, {"Enemy"})
        if #colliders > 0 then
            player.grounded = true
        else
            player.grounded = false
        end

        player.isMoving = false

        if #collidersEnemy > 0 then
            playerOnEnemy = true

            player:applyLinearImpulse(0, -2000)
        else
            playerOnEnemy = false
        end

        local px, py = player:getPosition()
        if gameState == 2 then
            if love.keyboard.isDown("right") and player.isDead == false then
                player:setX(px + player.speed * dt) --set position to current x position +5
                player.isMoving = true
                player.direction = 1
            end

            if love.keyboard.isDown("left") and player.isDead == false then
                player:setX(px - player.speed * dt)
                player.isMoving = true
                player.direction = -1
            end

            if love.keyboard.isDown("up") and player.isDead == false and player.grounded then
                player:applyLinearImpulse(0, -6000)
                sounds.jump:play()
            end
            --[[ function love.keypressed(key )  ---Aici sa ma uit ca nu imi place
                    if key=='up' then
                    if player.grounded then
                    player:applyLinearImpulse(0,-9000)
                    sounds.jump:play() 
                
                    end
                    end ]]
            function love.keypressed(key)
                if key == "space" then
                    spawnBullet(dt)
                end
            end
        end
    end

    if player:enter("Danger") then
        player:setPosition(playerStartX, playerStartY)
        score = scoreLevel
        coinsScore = coinsLevelScore
        loadMap(saveData.currentLevel)
    end

    if player:enter("Enemy") and playerOnEnemy == true then
        destroyEnemy()
    end

    -- if playerOnEnemy==true then
    --     player:applyLinearImpulse(0,-2000)
    -- end

    if player:enter("Player") then --Coins were given player collision class
        destroyCoins()
    end

    if player:enter("Enemy") and playerOnEnemy == false then --and playerLife<1 then
        player.isDead = true

        destroyEnemy()

    --player:applyLinearImpulse(-2000,0)
    --player:setPosition(playerStartX,playerStartY)
    --player.grounded=true
    --score=scoreLevel
    --coinsScore=coinsLevelScore
    --playerLife=3
    --loadMap(saveData.currentLevel)
    end

    if player.grounded then
        if player.isMoving == true then --and playerLife>0 then
            player.animation = animations.run
        elseif player.isDead == true then
            --deadTimer=deadTimer+dt
            player.animation = animations.dead

            --if deadTimer>0.5 then
            gameState = 1
        else
            player.animation = animations.idle
        end
    else
        player.animation = animations.jump
    end
    player.animation:update(dt) --needed to cycle the animation at the speed we set, next, we draw the animation
end

function drawPlayer(dt)
    local px, py = player:getPosition()
    if player.animation == animations.dead then
        player.animation:draw(sprites.dead, px, py, nil, 0.25 * player.direction, 0.25, 300, 250)
    elseif player.animation == animations.run then
        player.animation:draw(sprites.runAndJump, px, py, nil, 0.25 * player.direction, 0.25, 300, 250)
    elseif player.animation == animations.jump then
        player.animation:draw(sprites.runAndJump, px, py, nil, 0.25 * player.direction, 0.25, 300, 250)
    elseif player.animation == animations.idle then
        player.animation:draw(sprites.idleDead, px, py, nil, 0.25 * player.direction, 0.25, 300, 250)
    end
    --player.animation:draw(sprites.runAndJump,px,py,nil, 0.25*player.direction, 0.25, 130,300)
end
