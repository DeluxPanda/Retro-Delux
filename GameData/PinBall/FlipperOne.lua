FlipperOne = {}
local angle = 0.8

function FlipperOne:load()
    self.x = (love.graphics.getWidth() / 2) - (100 / 2) - 100 + 48
    self.y = love.graphics.getHeight() - 50
    self.Width = 100
    self.Height = 20
end

function FlipperOne:update(dt)
    FlipperOneMove(dt)
end

function FlipperOneMove(dt)
    if love.keyboard.isDown("left") then
        angle = -0.5
    else
        angle = 0.8
    end
end

function FlipperOne:draw()
    love.graphics.setColor(ColorSelectedForPlayerOne)
    local x = (love.graphics.getWidth() / 2) - (100 / 2) - 100 + 48
    local y = love.graphics.getHeight() - 50
    local Width = 100
    local Height = 20
     
    love.graphics.push() -- Push the current transformation matrix
    love.graphics.translate(x + Width/ 2, y + Height / 2) -- Translate to the center of the rectangle
    love.graphics.rotate(angle) -- Rotate around the center
    love.graphics.rectangle("fill", -Width / 2, -Height / 2, Width, Height, 10) -- Draw the rotated rectangle
    love.graphics.pop() -- Restore the previous transformation matrix
end
