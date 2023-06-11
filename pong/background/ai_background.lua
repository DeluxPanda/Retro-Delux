ai_background = {}
function math_random()
   math.randomseed(os.time())
   random_yvel = math.random(0, 100)
end
function ai_background:load()
   math_random()
   self.Height = 100
   self.Width = 20
   self.x = 50
   self.y = love.graphics.getHeight() / 2
   self.speed = 300
   self.yvel = random_yvel
end

function ai_background:update(dt)
   ai_background:move(dt)
   ai_background:acquai_backgrounderTraget()
end

function ai_background:move(dt)
   self.y = self.y + self.yvel * dt
end

function ai_background:acquai_backgrounderTraget()
   if ball_background.y + ball_background.Height < self.y then
      self.yvel = -self.speed
   elseif ball_background.y > self.y + ball_background.Height then
      self.yvel = self.speed
   else
      self.yvel = 0
   end
end

function ai_background:draw()
   love.graphics.setColor(red)
   love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height)
end