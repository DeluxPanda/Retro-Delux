ball_background =  {}
AIPoint_Tow_background = 0
AIPoint_background = 0
function math_random()
   math.randomseed(os.time())
   random_yvel = math.random(0, 100)
   random_y = math.random(300, 500)
   random_x = math.random(400, 700)
end

function ball_background:load()
   math_random()
   self.x = random_x
   self.y = random_y
   self.Width = 20
   self.Height = 20
   self.speed = 200
   self.xvel = -self.speed
   self.yvel = random_yvel
local messagePlayer = 0
local messageAI = 0
   FontPoints = love.graphics.newFont(40)
end

function ball_background:update(dt)
   ball_background:move(dt)
   ball_background:collision()
end

function ball_background:collision()
   if checkCollision(self, ai_background) then
      local middelball = self.y + self.Height / 2
      local middelplayer = ai_background.y + ai_background.Height / 2
      local collisionposition = middelball - middelplayer
      self.xvel = self.speed
      self.yvel = collisionposition * 5
      -- print("player")
      blip:play()
   end
   if checkCollision(self, ai_Tow_background) then
      local middelball = self.y + self.Height / 2
      local middelai = ai_Tow_background.y + ai_Tow_background.Height / 2
      local collisionposition = middelball - middelai
      self.xvel = -self.speed
      self.yvel = collisionposition * 5
      --print("AI")
      blip:play()
   end


   if self.y < 0 then
      self.y = 0
      self.yvel = -self.yvel
   elseif self.y + self.Height > love.graphics.getHeight() then
      self.y = love.graphics.getHeight() - self.Height
      self.yvel = -self.yvel
   end

   -- Player Side
   if self.x < 0 then
      self.x = random_x - self.Width / 2
      self.y = random_y - self.Height / 2
      self.yvel = random_yvel
      self.xvel = self.speed
      --  print("AI win (player sida)")
      AIPoint_Tow_background = AIPoint_Tow_background + 1
      messageAI = {AIPoint_Tow_background}
      blip_win:play()

      -- AI Side
   elseif self.x + self.Width > love.graphics.getWidth() then
      self.x = random_x - self.Width / 2
      self.y = random_y - self.Height / 2
      self.yvel = random_yvel
      self.xvel = -self.speed
      --  print("Player win (AI sida)")
      AIPoint_background = AIPoint_background + 1
      messagePlayer = {AIPoint_background}
      blip_win:play()
   end
end


function ball_background:move(dt)
   self.x = self.x + self.xvel * dt
   self.y = self.y + self.yvel * dt
end

function ball_background:draw()

   love.graphics.setFont(FontPoints)
   love.graphics.setColor(yellow)

   -- "|"
   local pipeWidth = FontPoints:getWidth("|")
   love.graphics.print("|", love.graphics.getWidth() / 2 - pipeWidth / 2, 10)

   -- Player
   local playerScore = tostring(AIPoint_background)
   local playerScoreWidth = FontPoints:getWidth(playerScore)
   love.graphics.print(playerScore, love.graphics.getWidth() / 2 - pipeWidth / 2 - playerScoreWidth, 10)

   -- AI
   local AIScore = tostring(AIPoint_Tow_background)
   local AIScoreWidth = FontPoints:getWidth(AIScore)
   love.graphics.print(AIScore, love.graphics.getWidth() / 2 + pipeWidth / 2, 10)

   -- ball_background
   love.graphics.setColor(yellow)
   love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height, 10, 10)
   if AIPoint_Tow_background >= 11 then
      AIPoint_Tow_background = 0
      AIPoint_background = 0
end
if AIPoint_background >= 11 then
   AIPoint_Tow_background = 0
   AIPoint_background = 0
end
end

