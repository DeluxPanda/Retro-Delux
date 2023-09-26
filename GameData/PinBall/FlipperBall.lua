FlipperBall = {}

local Ball_x_Direction = 0
local Ball_y_Direction = love.graphics.getHeight() - 30

function FlipperBall:load()
    self.x = love.graphics.getWidth() - 50
    self.y = love.graphics.getHeight() - 30
    self.Width = 20
    self.Height = 20
    print("Load ball")
end

function FlipperBall:update(dt)
    FlipperBall:move(dt)
    FlipperBall:collision()
end

function FlipperBall:collision()
    if self.y < 0 and Ball_x_Direction == 0 then
        --weee Toppen
        self.y = 0
        Ball_y_Direction = -Ball_y_Direction
        Ball_x_Direction = -400
        print("Start Hörnet")
    elseif self.y < 0 then
        --Toppen
        self.y = 0
        Ball_y_Direction = -Ball_y_Direction
        print("top")
    elseif self.y + self.Height > love.graphics.getHeight() then
        -- botten
        self.y = love.graphics.getHeight() - self.Height
        Ball_y_Direction = -Ball_y_Direction
        print("Dead")
    end
    if self.x < 0 then
        self.x = 0
        Ball_x_Direction = -Ball_x_Direction
        print("Vänster")
    elseif self.x + self.Width > love.graphics.getWidth() then
        self.x = love.graphics.getWidth() - self.Width
        Ball_x_Direction = -Ball_x_Direction
        print("Höger")
end


if checkCollision(self, FlipperOne) then
    Ball_x_Direction = -Ball_x_Direction
 end
 if checkCollision(self, FlipperTow) then
    Ball_x_Direction = -Ball_x_Direction
 end

end

function FlipperBall:move(dt)
    self.x = self.x + Ball_x_Direction * dt
    self.y = self.y + Ball_y_Direction * dt
end

function FlipperBall:draw()
    love.graphics.setColor(ColorSelectedForBall)
    love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height, 10, 10)
end
