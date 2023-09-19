FlipperBall = {}
local x = love.graphics.getWidth() / 2
local y = love.graphics.getHeight() / 2
local width = 20
local height = 20
local speed = 200
local xvel = -200
local yvel = 300

function FlipperBall:load()
    randomizeYVel()
end

function FlipperBall:update(dt)
    FlipperBall:move(dt)
    FlipperBall:collision()
end

function FlipperBall:randomizeYVel()
    math.randomseed(os.time())
    yvel = math.random(200, 300)
end

function FlipperBall:collision()
    if y < 0 then
        y = 0
        yvel = -yvel
    elseif y + height > love.graphics.getHeight() then
        y = love.graphics.getHeight() - height
        yvel = -yvel
    end

    if x < 0 then
        x = 0
        xvel = -xvel
    elseif x + width > love.graphics.getWidth() then
        x = love.graphics.getWidth() - width
        xvel = -xvel
    end
end

function FlipperBall:move(dt)
    x = x + xvel * dt
    y = y + yvel * dt
end

function FlipperBall:draw()
    love.graphics.setColor(ColorSelectedForFlipperBall)
    love.graphics.rectangle("fill", x, y, width, height, 10, 10)
end
