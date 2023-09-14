
PinBallGame =  {}

local Height = 20
local Width = 100

local x1 = (love.graphics.getWidth() / 2) - (button_width / 2) - 100
local y1 = love.graphics.getHeight() - 60

local x2 = (love.graphics.getWidth() / 2) - (button_width / 2) + 100
local y2 = love.graphics.getHeight() - 60

local speed = 300
local angle = 0

function love.update(dt)
    PinBallGame:move(dt)
end

function  PinBallGame:move(dt)
-- Keyboard
if not love.keyboard.isDown("left") then
    angle = 1
else
    angle = 0
end

if not love.keyboard.isDown("right") then
    angle = 1
else
    angle = 0
end
-- keyboard End
end

function love.draw()
    love.graphics.setColor(ColorSelectedForPlayerOne)
	--love.graphics.rotate(angle)
    love.graphics.rectangle("fill", x1, y1, Width, Height, 10)

--	love.graphics.rotate(angle)
    love.graphics.rectangle("fill", x2, y2, Width, Height, 10)
end
    