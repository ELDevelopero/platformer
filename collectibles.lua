coins={}

function spawnCoin(x,y)
local coin=world:newRectangleCollider(x,y, 64,64, {collision_class="Player"})
coin:setGravityScale(0)
coin.animation=animations.coin
table.insert(coins,coin)
end

function drawCoins(dt)

    for i,c in ipairs(coins) do
        local cx,cy =c:getPosition()
        c.animation:draw(sprites.coin,cx,cy,nil,nil,nil,32,32) --32 32 is to move the collider rectangle in the middle of the object, it is half the image size
        

    end
end
function destroyCoins(dt)

    for i=#coins,1,-1 do
        local c=coins[i] --c stores the coin that is being touched only and not all of them
        if c:enter('Player') then 
        c:destroy() --destroys the collider and everything
        
        table.remove(coins,i) --removes from the list
        score=score+1
        coinsScore=coinsScore+1
        
           
        end
       
     end
end 
    
       
        --local i=#coins
        --while i > 0 do
        
           -- coins[i]:destroy() --once it is destroyed, we need to remove it from the table as well
        

            --table.remove(coins,i)
             
        --end
    
