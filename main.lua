

function love.load() 
    
    love.window.setMode(1000, 768)
    anim8=require 'libraries/anim8/anim8'
    sti = require 'libraries/Simple-Tiled-Implementation/sti'
    cameraFile=require 'libraries/hump/camera'
    cam=cameraFile()
    cron = require 'libraries/cron/cron'
    myFont=love.graphics.newFont(30)
    sounds={}
    sounds.jump=love.audio.newSource("audio/jump.wav", "static")
    sounds.music=love.audio.newSource("audio/music.mp3", "stream")
    sounds.music:setLooping(true)
    sounds.music:setVolume(0.2)
    sounds.jump:setVolume(0.2)
    sounds.music:play()
    score=0
    scoreLevel=0
    coinsScore=0
    coinsLevelScore=0
    gameState=2
    
    
    


    sprites={} 
    --sprites.playerSheet=love.graphics.newImage('sprites/playerSheet.png')
    sprites.runAndJump=love.graphics.newImage('sprites/runAndJump.png')
    sprites.idleDead=love.graphics.newImage('sprites/idleDead.png')
    sprites.slideAndShoot=love.graphics.newImage('sprites/slideAndShoot.png')
    sprites.dead=love.graphics.newImage('sprites/dead.png')

    sprites.enemySheet=love.graphics.newImage('sprites/enemySheet.png')
    --sprites.background=love.graphics.newImage('sprites/background.png')
    sprites.coin=love.graphics.newImage('sprites/coin.png')
    sprites.bullet=love.graphics.newImage('sprites/bullet.png')

    --local grid=anim8.newGrid(614,564,sprites.playerSheet:getWidth(), sprites.playerSheet:getHeight())
    local grid1=anim8.newGrid(641,542,sprites.runAndJump:getWidth(), sprites.runAndJump:getHeight())
    local grid2=anim8.newGrid(641,542,sprites.idleDead:getWidth(), sprites.idleDead:getHeight())
    local grid3=anim8.newGrid(605,604,sprites.dead:getWidth(), sprites.dead:getHeight())
    local grid4=anim8.newGrid(623,604,sprites.slideAndShoot:getWidth(), sprites.slideAndShoot:getHeight())
    local enemyGrid=anim8.newGrid(100,79,sprites.enemySheet:getWidth(), sprites.enemySheet:getHeight())
    local coinGrid=anim8.newGrid(64,64,sprites.coin:getWidth(), sprites.coin:getHeight())
    local bulletGrid=anim8.newGrid(64,64,sprites.bullet:getWidth(), sprites.bullet:getHeight())

    animations={}
    animations.idle=anim8.newAnimation(grid2('1-10',1),0.1)
    --animations.jump=anim8.newAnimation(grid('1-7',2),0.05)
    animations.jump=anim8.newAnimation(grid1('9-18',1),0.1)
    animations.run=anim8.newAnimation(grid1('8-1',1),0.1)
    animations.dead=anim8.newAnimation(grid3('1-10',1),0.1, 'pauseAtEnd')
    
    --animations.staydead=anim8.newAnimation(grid2('7-7',1),3)
    animations.enemy=anim8.newAnimation(enemyGrid('1-2',1),0.03)
    animations.coin=anim8.newAnimation(coinGrid('1-1',1), 1)
    animations.bullet=anim8.newAnimation(bulletGrid('1-1',1), 1)
    --animations.hurt=anim8.newAnimation(grid('1-9',2),0.3)

    wf=require 'libraries/windfield/windfield'
    world=wf.newWorld(0,800, false) --x,y directions gravity
    world:setQueryDebugDrawing(true) --see the query when we click the mouse
    world:addCollisionClass('Platform')
    world:addCollisionClass('Player',{ignores = {'Player'}}) --Coins, being player collision class, are not interacting whit the player, when player jumps into them.
    world:addCollisionClass('Danger')
    world:addCollisionClass('Enemy')
    world:addCollisionClass('Bullets',{ignores = {'Player'}}) --ignores Players in this case bullets can fly through player and coins.
   -- world:addCollisionClass('Ghost', {ignores = {'Solid'}})
    world:addCollisionClass('Top')

    require("player")
    require("enemy")
    require("libraries/show")
    require("collectibles")
    require("bullets")
    require("gamestate")
   
    

    dangerZone=world:newRectangleCollider(-500,800,5000,50, {collision_class="Danger"})
    dangerZone:setType('static')
    topWorld=world:newRectangleCollider(-500,-100,10000,5, {collision_class="Top"})
    topWorld:setType('static')
  

    platforms= {}
    flagX=0
    flagY=0
    saveData={}
    saveData.currentLevel= "level1"

    if love.filesystem.getInfo("dataSave.lua") then
        local data =love.filesystem.load("dataSave.lua")
        data()
    end

    loadMap(saveData.currentLevel)
    

end


function love.update(dt)
    
   world:update(dt)
   gameMap:update(dt)
   gameStateUpdate(dt)
   --if gameState==2 then
   playerUpdate(dt)
   --end
   updateEnemies(dt)
   bulletsUpdate(dt)
   destroyBullets(dt)
   destroyEnemy(dt)
   destroyCoins(dt)
   
   
   local px,py=player:getPosition()
   cam:lookAt(px,love.graphics.getHeight()/2)

    

   local colliders=world:queryCircleArea(flagX, flagY, 10, {'Player'})
   if #colliders>0 then
        score=score+100
        scoreLevel=score
        coinsLevelScore=coinsScore
                 
        if saveData.currentLevel =="level1" then
            loadMap("level2")
        
            elseif saveData.currentLevel=="level2" then
            loadMap("level1") --we can have here level3, 4 etc.
        end
    
    end

    
    
end
   
function love.draw(dt)
 --love.graphics.draw(sprites.background,0,0)
 love.graphics.setFont(myFont)
 love.graphics.printf("Score: " .. score, 0, love.graphics.getHeight()-750, love.graphics.getWidth(), "center")
 love.graphics.printf("Coins: " .. coinsScore, 0, love.graphics.getHeight()-750, love.graphics.getWidth(), "left")
 love.graphics.printf("Life: " .. playerLife, 0, love.graphics.getHeight()-750, love.graphics.getWidth(), "right")
 gameStateDraw(dt)
    cam:attach()
        gameMap:drawLayer(gameMap.layers["Tile Layer 1"])
        world:draw(dt)
        
        drawPlayer(dt)
        drawEnemies(dt)
        drawCoins(dt)
        drawBullets(dt)
        

       

    cam:detach()

end

function spawnPlatform(x,y,width,height)
    local platform=world:newRectangleCollider(x,y,width,height, {collision_class="Platform"})
    platform:setType('static')
    table.insert(platforms,platform)
end

function destroyAll()
    local i =#platforms
    while i > -1 do
        if platforms[i] ~=nil then
        platforms[i]:destroy() --once it is destroyed, we need to remove it from the table as well
        end
        table.remove(platforms,i)
        i=i-1
    end
    local i =#enemies
    while i > -1 do
        if enemies[i] ~=nil  then
        enemies[i]:destroy() --once it is destroyed, we need to remove it from the table as well
        end
        table.remove(enemies,i)
        i=i-1
    end

    local c =#coins
    while c > -1 do
        if coins[c] ~=nil  then
        coins[c]:destroy() --once it is destroyed, we need to remove it from the table as well
        end
        table.remove(coins,c)
        c=c-1
    end

       
end
function loadMap(mapName)
    saveData.currentLevel=mapName
    love.filesystem.write("dataSave.lua", table.show(saveData, "saveData"))

    destroyAll()
    
    gameMap=sti("maps/" .. mapName .. ".lua")
    for i, obj in pairs(gameMap.layers["Start"].objects) do
        playerStartX=obj.x
        playerStartY=obj.y
        
    end
    player:setPosition(playerStartX,playerStartY)
    

    for i, obj in pairs(gameMap.layers["Platforms"].objects) do
        spawnPlatform(obj.x,obj.y,obj.width,obj.height)
    end

    for i, obj in pairs(gameMap.layers["Enemies"].objects) do
        spawnEnemy(obj.x,obj.y)
    end

    
    --for i, obj in pairs(gameMap.layers["Coins"].objects) do
        --spawnCoin(obj.x,obj.y)
    --end
     
 
    for i, obj in pairs(gameMap.layers["Flag"].objects) do
        flagX=obj.x
        flagY=obj.y
    end
    
end

