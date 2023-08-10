ball_SinglePlayer =  {}
 AIPointPong = 0
 PlayerPointPong = 0
 function math_random()
   math.randomseed(os.time())
   random_yvel = math.random(0, 100)
end

function ball_SinglePlayer:load()
   AIPointPong = 0
   PlayerPointPong = 0
   self.x = love.graphics.getWidth() / 2
   self.y = love.graphics.getHeight() / 2
   self.Width = 20
   self.Height = 20
   self.speed = 200
   self.xvel = -self.speed
   self.yvel = 0
local messagePlayer = {PlayerPointPong}
local messageAI = {AIPointPong}
   FontPoints = love.graphics.newFont(40)
end
function ball_SinglePlayer:update(dt)
   ball_SinglePlayer:move(dt)
   ball_SinglePlayer:collision()
end

function ball_SinglePlayer:collision()
   if checkCollision(self, player_SinglePlayer) then
      local middelball = self.y + self.Height / 2
      local middelplayer = player_SinglePlayer.y + player_SinglePlayer.Height / 2
      local collisionposition = middelball - middelplayer
      self.speed = self.speed + 10
      self.xvel = self.speed
      self.yvel = collisionposition * 5
      blip:play()
   end
   if checkCollision(self, ai_SinglePlayer) then
      local middelball = self.y + self.Height / 2
      local middelai = ai_SinglePlayer.y + ai_SinglePlayer.Height / 2
      local collisionposition = middelball - middelai
      self.speed = self.speed + 10
      self.xvel = -self.speed
      self.yvel = collisionposition * 5
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
      math_random()
      self.x = love.graphics.getWidth() / 2 - self.Width / 2
      self.y = love.graphics.getHeight() / 2 - self.Height / 2
      self.speed = self.speed + 5
      self.yvel = random_yvel
      self.xvel = self.speed
      AIPointPong = AIPointPong + 1
      messageAI = {AIPointPong}
      blip_win:play()

      -- AI Side
   elseif self.x + self.Width > love.graphics.getWidth() then
      math_random()
      self.x = love.graphics.getWidth() / 2 - self.Width / 2
      self.y = love.graphics.getHeight() / 2 - self.Height / 2
      self.speed = self.speed + 5
      self.yvel = random_yvel
      self.xvel = -self.speed
      PlayerPointPong = PlayerPointPong + 1
      messagePlayer = {PlayerPointPong}
      blip_win:play()
   end
end


function ball_SinglePlayer:move(dt)
   self.x = self.x + self.xvel * dt
   self.y = self.y + self.yvel * dt
end

function ball_SinglePlayer:draw()
   love.graphics.setFont(FontPoints)
   love.graphics.setColor(yellow)

   -- "|"
   local pipeWidth = FontPoints:getWidth("|")
   love.graphics.print("|", love.graphics.getWidth() / 2 - pipeWidth / 2, 10)

   -- Player
   local playerScore = tostring(PlayerPointPong)
   local playerScoreWidth = FontPoints:getWidth(playerScore)
   love.graphics.print(playerScore, love.graphics.getWidth() / 2 - pipeWidth / 2 - playerScoreWidth, 10)

   -- AI
   local AIScore = tostring(AIPointPong)
   local AIScoreWidth = FontPoints:getWidth(AIScore)
   love.graphics.print(AIScore, love.graphics.getWidth() / 2 + pipeWidth / 2, 10)


   -- ball_SinglePlayer
   love.graphics.setColor(ColorSelectedForBall)
   love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height, 10,10)
   if WiningPongWhitPoints == true then
      if PlayerPointPong >= tonumber(PointCunt) then
         WiningPong = true
         paused  = true
               -- Game Title
               love.graphics.setFont(Game_Titl_font)
                love.graphics.setColor(255, 255, 255)
                love.graphics.printf(PlayerYouWin, GameTitle_x, GameTitle_y, button_start_y, "center")
                GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
                GameTitle_y = 80
    end
    if AIPointPong >= tonumber(PointCunt) then
      WiningPong = true
      paused  = true
                  -- Game Title
                  love.graphics.setFont(Game_Titl_font)
                   love.graphics.setColor(255, 255, 255)
                   love.graphics.printf(PlayerAIWin, GameTitle_x, GameTitle_y, button_start_y, "center")
                   GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
                   GameTitle_y = 80
   end
   end
end