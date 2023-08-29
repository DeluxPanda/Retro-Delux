playerTow_LocalMultiPlayer =  {}
function playerTow_LocalMultiPlayer:load()
   self.Height = 100
   self.Width = 20
   self.speed = 300
   self.x = love.graphics.getWidth() -self.Width - 50
   self.y = love.graphics.getHeight() / 2
end

function playerTow_LocalMultiPlayer:update(dt)
   playerTow_LocalMultiPlayer:move(dt)
   playerTow_LocalMultiPlayer:border()
end

function playerTow_LocalMultiPlayer:move(dt)
-- Controller
   local joystickcount = love.joystick.getJoystickCount()
   if (joystickcount > 1) then
      local joystick = love.joystick.getJoysticks()[2]
   local threshold = 0.5 -- adjust this as needed
   if joystick:getAxis(2) < -threshold then
      self.y = self.y - self.speed * dt
   elseif joystick:getAxis(2) > threshold then
      self.y = self.y + self.speed * dt
   end
   elseif (joystickcount > 0) then
      local joystick = love.joystick.getJoysticks()[1]
      local threshold = 0.5 -- adjust this as needed
      if joystick:getAxis(4) < -threshold or joystick:getAxis(3) < -threshold then
         self.y = self.y - self.speed * dt
      elseif joystick:getAxis(4) > threshold or joystick:getAxis(3) > threshold then
         self.y = self.y + self.speed * dt
      end
end
-- keyboard
   if love.keyboard.isDown("up") then
      self.y = self.y - self.speed * dt
   elseif
      love.keyboard.isDown("down") then
         self.y = self.y + self.speed * dt
      end
   end

   function playerTow_LocalMultiPlayer:border()
      if self.y < 0 then
         self.y = 0
      elseif self.y + self.Height > love.graphics.getHeight() then
         self.y = love.graphics.getHeight() - self.Height
      end
   end

   function playerTow_LocalMultiPlayer:draw()
      love.graphics.setColor(ColorSelectedForPlayerTow)
      love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height)
   end