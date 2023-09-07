player_SinglePlayer =  {}
AIPoint_Tow_background = nil
AIPoint_background = nil
collectgarbage("collect")
function player_SinglePlayer:load()
   self.Height = 100
   self.Width = 20
   self.x = 50
   self.y = love.graphics.getHeight() / 2
   self.speed = 300
end

function player_SinglePlayer:update(dt)
   player_SinglePlayer:move(dt)
   player_SinglePlayer:border()
end

function player_SinglePlayer:move(dt)
-- Hand Controller
local joystick = love.joystick.getJoysticks()[1]
if (joystickcount > 0) then
local threshold = 0.5 -- adjust this as needed
if joystick:getAxis(2) < -threshold or joystick:getAxis(1) < -threshold then
   self.y = self.y - self.speed * dt
elseif joystick:getAxis(2) > threshold or joystick:getAxis(1) > threshold then
   self.y = self.y + self.speed * dt
end
end
-- hand conrller End

-- Keyboard Start
   if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
      self.y = self.y - self.speed * dt
   elseif
      love.keyboard.isDown("down") or love.keyboard.isDown("s") then
         self.y = self.y + self.speed * dt
      end
-- keyboard End
   end

   function player_SinglePlayer:border()
      if self.y < 0 then
         self.y = 0
      elseif self.y + self.Height > love.graphics.getHeight() then
         self.y = love.graphics.getHeight() - self.Height
      end
   end

   function player_SinglePlayer:draw()
      love.graphics.setColor(ColorSelectedForPlayerOne)
      love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height)
   end