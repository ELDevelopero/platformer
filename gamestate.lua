rTimer = 0
function gameStateDraw(dt)
    if gameState == 1 then
        love.graphics.printf(
            "Click anywhere to begin",
            0,
            love.graphics.getHeight() - 500,
            love.graphics.getWidth(),
            "center"
        )
    elseif gameState == 2 then
    end
end

function gameStateUpdate(dt)
    --if gamestate==1 then

    if gameState == 1 and love.mouse.isDown(1) then --love.keyboard.isDown('r')
        -- rTimer=rTimer+1

        gameState = 2
        --player:applyLinearImpulse(-2000,0)
        --player:setPosition(playerStartX,playerStartY)
        --player.grounded=true

        --score=scoreLevel
        --coinsScore=coinsLevelScore
        --playerLife=1
        player.isDead = false

        love.event.quit("restart")
        loadMap(saveData.currentLevel)
    end
end
