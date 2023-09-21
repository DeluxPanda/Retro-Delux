FlipperBall = {}
local Ball_width = 20
local Ball_height = 20

local Ball_x_position = love.graphics.getWidth() - 50
local Ball_y_position = love.graphics.getHeight() - 30

local Ball_speed = 0

local Ball_x_Direction = 0
local Ball_y_Direction = love.graphics.getHeight() - 30



function FlipperBall:load()
--    self.x = love.graphics.getWidth() - 50
--    self.y = love.graphics.getHeight() - 30
--    self.Width = 20
--    self.Height = 20
end
function FlipperBall:update(dt)
    FlipperBall:move(dt)
    FlipperBall:collision()
end

function FlipperBall:collision()
    if Ball_y_position < 0 and Ball_x_Direction == 0 then
        --weee Toppen
        Ball_y_position = 0
        Ball_y_Direction = -Ball_y_Direction
        Ball_x_Direction = -400
        print("weeeee")
    elseif Ball_y_position < 0 then
        --Toppen
        Ball_y_position = 0
        Ball_y_Direction = -Ball_y_Direction
        print("top")
    elseif Ball_y_position + Ball_height > love.graphics.getHeight() then
        -- botten
        Ball_y_position = love.graphics.getHeight() - Ball_height
        Ball_y_Direction = -Ball_y_Direction
        print("Dead")
    end
    if Ball_x_position < 0 then
        Ball_x_position = 0
        Ball_x_Direction = -Ball_x_Direction
    elseif Ball_x_position + Ball_width > love.graphics.getWidth() then
        Ball_x_position = love.graphics.getWidth() - Ball_width
        Ball_x_Direction = -Ball_x_Direction
end

local self = {
    x = love.graphics.getWidth() - 50,
    y = love.graphics.getHeight() - 30,
    Width = 20,
    Height = 20
}

local FlipperOne = {
    x = (love.graphics.getWidth() / 2) - (100 / 2) - 100 + 48,
    y = love.graphics.getHeight() - 50,
    Width = 100,
    Height = 20
}
local FlipperTow = {
    x = (love.graphics.getWidth() / 2) + (100 / 2) - 48,
    y = love.graphics.getHeight() - 50,
    Width = 100,
    Height = 20
}

if checkCollision(self, FlipperOne) then
    --local middelball = self.y + self.Height / 2
    --local middelplayer = FlipperOne.y + FlipperOne.Height / 2
    --local collisionposition = middelball - middelplayer
    print("2")
 end
 if checkCollision(self, FlipperTow) then
    --local middelball = self.y + self.Height / 2
    --local middelplayerTow = FlipperTow.y + FlipperTow.Height / 2
    --local collisionposition = middelball - middelplayerTow
    print("2")
 end
end

function FlipperBall:move(dt)
    Ball_x_position = Ball_x_position + Ball_x_Direction * dt
    Ball_y_position = Ball_y_position + Ball_y_Direction * dt
end

function FlipperBall:draw()
    love.graphics.setColor(ColorSelectedForBall)
    love.graphics.rectangle("fill", Ball_x_position, Ball_y_position, Ball_width, Ball_height, 10, 10)
end
