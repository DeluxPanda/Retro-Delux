local countdown = 10 -- starting value
function love.load()
   if started_SinglePlayer then
   player_SinglePlayer:load()
   ball_SinglePlayer:load()
   ai_SinglePlayer:load()
end
end

--while countdown > 0 do
--  print(countdown)
--  countdown = countdown - 1
--  love.timer.sleep(1) -- wait one second before continuing
--end

function love.update(dt)
   if started_SinglePlayer then
   if not paused then
   player_SinglePlayer:update(dt)
   ball_SinglePlayer:update(dt)
   ai_SinglePlayer:update(dt)
else    
   local joystickcount = love.joystick.getJoystickCount()
   if (joystickcount > 0) then
 joystick_timer = joystick_timer + dt
 if joystick_timer >= joystick_delay then
local joystick = love.joystick.getJoysticks()[1]
   local threshold = 0.5
   if joystick:getAxis(2) < -threshold then
       keyboard:MenuUp()
   elseif joystick:getAxis(2) > threshold then
       keyboard:MenuDown()
   end
   joystick_timer = 0
 end
   end   
end
end
end
function love.draw()
   if started_SinglePlayer then
   player_SinglePlayer:draw()
   ball_SinglePlayer:draw()
   ai_SinglePlayer:draw()
   if paused then
   pause_menu()
   end
end
end

function checkCollision(a, b)
   if started_SinglePlayer then
   if a.x + a.Width > b.x and a.x < b.x + b.Width and a.y + a.Height > b.y and a.y < b.y + b.Height then
      return true
   else
      return false
   end
end
end
