PlayerTowPointPong = 0
PlayerPointPong = 0
function love.load()
   if started_LocalMultiPlayer then
   player_LocalMultiPlayer:load()
   ball_LocalMultiPlayer:load()
   playerTow_LocalMultiPlayer:load()
   end
end

function love.update(dt)
   if started_LocalMultiPlayer then
   if not paused and not helper then
    player_LocalMultiPlayer:update(dt)
    ball_LocalMultiPlayer:update(dt)
    playerTow_LocalMultiPlayer:update(dt)
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
   if started_LocalMultiPlayer then
      if not helper then
   player_LocalMultiPlayer:draw()
   ball_LocalMultiPlayer:draw()
   playerTow_LocalMultiPlayer:draw()
end
if paused then
pause_menu()
end
if helper then
selectButton = 1
help()
end
end
end
if HasNotPlaydeBefore_pong_Multi then
   HasNotPlaydeBefore_pong_Multi = false
   helper = true
end
function checkCollision(a, b)
   if started_LocalMultiPlayer then
   if a.x + a.Width > b.x and a.x < b.x + b.Width and a.y + a.Height > b.y and a.y < b.y + b.Height then
      return true
   else
      return false
   end
end
end