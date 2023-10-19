ai_SinglePlayer = {}

function ai_SinglePlayer:load()
   self.Height = 100
   self.Width = 20
   self.x = love.graphics.getWidth() -self.Width - 50
   self.y = love.graphics.getHeight() / 2
   self.speed = 300
   self.yvel = 0
end


function ai_SinglePlayer:update(dt)
   ai_SinglePlayer:move(dt)
   ai_SinglePlayer:acquai_SinglePlayerTraget()
   ai_SinglePlayer:border()
end

function ai_SinglePlayer:move(dt)
   self.y = self.y + self.yvel * dt
end

function ai_SinglePlayer:acquai_SinglePlayerTraget()
   if ball_SinglePlayer.y + ball_SinglePlayer.Height < self.y then
      self.yvel = -self.speed
   elseif ball_SinglePlayer.y > self.y + ball_SinglePlayer.Height then
      self.yvel = self.speed
   else
      self.yvel = 0
   end
end

function ai_SinglePlayer:border()
   if self.y < 0 then
      self.y = 0
   elseif self.y + self.Height > love.graphics.getHeight() then
      self.y = love.graphics.getHeight() - self.Height
   end
end
function ai_SinglePlayer:draw()
   love.graphics.setColor(ColorSelectedForPlayerTwo)
   love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height)
end