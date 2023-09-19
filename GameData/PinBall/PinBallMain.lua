require ("GameData.PinBall.FlippersOne")
require ("GameData.PinBall.FlipperTow")
function love.load()
    
end
function love.update(dt)
    FlippersOne:update(dt)
    FlippersTow:update(dt)
end
function love.draw()
    FlippersOne:draw()
    FlippersTow:draw()
end