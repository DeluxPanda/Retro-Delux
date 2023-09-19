FlipperBall = {}
local Ball_x = love.graphics.getWidth() - 50
local Ball_y = love.graphics.getHeight() - 30
local Ball_width = 20
local Ball_height = 20
local Ball_speed = 200
local Ball_xvel = -200
local Ball_yvel = 300

function FlipperBall:load()
    randomizeYVel()
end

function FlipperBall:update(dt)
    FlipperBall:move(dt)
    FlipperBall:collision()
end

function FlipperBall:randomizeYVel()
    math.randomseed(os.time())
    Ball_yvel = math.random(200, 300)
end

function FlipperBall:collision()
    if Ball_y < 0 then
        Ball_y = 0
        Ball_yvel = -Ball_yvel
    elseif Ball_y + Ball_height > love.graphics.getHeight() then
        Ball_y = love.graphics.getHeight() - Ball_height
        Ball_yvel = -Ball_yvel
    end

    if Ball_x < 0 then
        Ball_x = 0
        Ball_xvel = -Ball_xvel
    elseif Ball_x + Ball_width > love.graphics.getWidth() then
        x = love.graphics.getWidth() - Ball_width
        Ball_xvel = -Ball_xvel
    end
end

function FlipperBall:move(dt)
    Ball_x = Ball_x + Ball_xvel * dt
    Ball_y = Ball_y + Ball_yvel * dt
end

function FlipperBall:draw()
    love.graphics.setColor(ColorSelectedForBall)
    love.graphics.rectangle("fill", Ball_x, Ball_y, Ball_width, Ball_height, 10, 10)
end
