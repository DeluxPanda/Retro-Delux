require ("GameData.PinBall.FlippersOne")
require ("GameData.PinBall.FlipperTow")
require ("GameData.PinBall.FlipperBall")
function love.load()
    FlipperBall:load()
end
function love.update(dt)
    FlippersOne:update(dt)
    FlippersTow:update(dt)
    FlipperBall:update(dt)
end
function love.draw()
    FlippersOne:draw()
    FlippersTow:draw()
    FlipperBall:draw()
end