require ("GameData.PinBall.FlippersOne")
require ("GameData.PinBall.FlipperTow")
require ("GameData.PinBall.Ball")
function love.load()
    Ball:load()
end
function love.update(dt)
    FlippersOne:update(dt)
    FlippersTow:update(dt)
    Ball:update(dt)
end
function love.draw()
    FlippersOne:draw()
    FlippersTow:draw()
    Ball:draw()
end