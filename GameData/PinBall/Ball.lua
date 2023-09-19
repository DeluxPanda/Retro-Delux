Ball = {}
local x = love.graphics.getWidth() / 2
local y = love.graphics.getHeight() / 2
local width = 20
local height = 20
local speed = 200
local xvel = -200
local yvel = 300

function Ball:load()
    randomizeYVel()
end

function Ball:update(dt)
    Ball:move(dt)
    Ball:collision()
end

function Ball:randomizeYVel()
    math.randomseed(os.time())
    yvel = math.random(200, 300)
end

function Ball:collision()
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

function Ball:move(dt)
    x = x + xvel * dt
    y = y + yvel * dt
end

function Ball:draw()
    love.graphics.setColor(ColorSelectedForBall)
    love.graphics.rectangle("fill", x, y, width, height, 10, 10)
end

return Ball
