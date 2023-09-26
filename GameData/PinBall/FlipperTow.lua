FlipperTow = {}
local angle = -0.8

function FlipperTow:load()
    self.x = (love.graphics.getWidth() / 2) + (100 / 2) - 48
    self.y = love.graphics.getHeight() - 50
    self.Width = 100
    self.Height = 20
end

function FlipperTow:update(dt)
    FlipperTowMove(dt)
end

function FlipperTowMove(dt)
    if love.keyboard.isDown("right") then
        angle = 0.5
    else
        angle = -0.8
    end
end

function FlipperTow:draw()
    love.graphics.setColor(ColorSelectedForPlayerTow)
     
    love.graphics.push() -- Push the current transformation matrix
    love.graphics.translate(self.x + self.Width/ 2, self.y + self.Height / 2) -- Translate to the center of the rectangle
    love.graphics.rotate(angle) -- Rotate around the center
    love.graphics.rectangle("fill", -self.Width / 2, -self.Height / 2, self.Width, self.Height, 10) -- Draw the rotated rectangle
    love.graphics.pop() -- Restore the previous transformation matrix
end
