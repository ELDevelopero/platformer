enemies = {}

function spawnEnemy(x, y)
    local enemy = world:newRectangleCollider(x, y, 70, 90, {collision_class = "Enemy"})
    enemy.direction = 1
    enemy.speed = 200
    enemy.animation = animations.enemy
    table.insert(enemies, enemy)
end

function updateEnemies(dt)
    for i, e in ipairs(enemies) do
        e.animation:update(dt)
        local ex, ey = e:getPosition()
        local e = enemies[i]

        local colliders = world:queryRectangleArea(ex + (40 * e.direction), ey + 40, 10, 10, {"Platform"})
        if #colliders == 0 then
            e.direction = e.direction * -1
        -- else
        --     colliders = world:queryRectangleArea(ex + (40 * e.direction), ey + 40, 10, 10, {"IgnorePlatform"})
        end

        e:setX(ex + e.speed * dt * e.direction)

        function destroyEnemy(dt) --Checking the collision // Need to add another collision class for the bullet
            for i, e in ipairs(enemies) do
                -- if e:enter("Bullets") then
                --     e.dead = true
                --     score = score + 10
                -- end
                if playerOnEnemy == true then
                    e.dead = true
                    score = score + 10
                    e:destroy()
                    table.remove(enemies, i)
                    sounds.enemyPop:play()
                end
                -- if player.isDead == true and e:enter("Player") then
                --     e.dead = true
                -- end
            end

            for i = #enemies, 1, -1 do --Removing enemies at the collision with the bullets. To solve the bug of all enemies dissapearing if the first one not killed, all the logics needs to be here.
                local e = enemies[i]
                if e:enter("Bullets") or e:enter("Player") then
                    score = score + 10

                    e:destroy()
                    table.remove(enemies, i)
                    sounds.enemyPop:stop()
                    sounds.enemyPop:play()
                end
                -- if e.dead == true then
                --     e:destroy()
                --     table.remove(enemies, i)
                --     sounds.enemyPop:play()
                -- end

                -- if player.isDead == true and e:enter("Player") then
                --     e.dead = true
                -- end
            end
        end
    end
end

function drawEnemies(dt)
    for i, e in ipairs(enemies) do
        local ex, ey = e:getPosition()
        e.animation:draw(sprites.enemySheet, ex, ey, nil, e.direction, 1, 50, 65)
    end
end
