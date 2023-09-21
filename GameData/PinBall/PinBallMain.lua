function love.load()
    FlipperOne:load()
    FlipperTow:load()
    FlipperBall:load()
end

function love.update(dt)
    if not paused and not helper then
    FlipperOne:update(dt)
    FlipperTow:update(dt)
    if started_PinBall == true then
    FlipperBall:update(dt)
    end
end
end

function love.draw()
    if not helper then
        FlipperOne:draw()
        FlipperTow:draw()
        if started_PinBall == true then
        FlipperBall:draw()
        end

if paused then
    pause_menu()
    end
    if helper then
    selectButton = 1
    help()
    end
    end
    end
    if HasNotPlaydeBefore then
       helper = true
       HasNotPlaydeBefore = false
    end

function checkCollision(a, b)
   if started_PinBall then
   if a.x + a.Width > b.x and a.x < b.x + b.Width and a.y + a.Height > b.y and a.y < b.y + b.Height then
      return true
   else
      return false
   end
end
end