ball_LocalMultiPlayer =  {}
 playerTwoPointPong = 0
 PlayerPointPong = 0
function math_random()
   math.randomseed(os.time())
   random_yvel = math.random(0, 100)
end

function ball_LocalMultiPlayer:load()
 playerTwoPointPong = 0
 PlayerPointPong = 0
   self.x = love.graphics.getWidth() / 2
   self.y = love.graphics.getHeight() / 2
   self.Width = 20
   self.Height = 20
   self.speed = 200
   self.xvel = -self.speed
   self.yvel = 0
local messagePlayer = {PlayerPointPong}
local messageplayerTwo = {playerTwoPointPong}
   FontPoints = love.graphics.newFont(40)
end

function ball_LocalMultiPlayer:update(dt)
   ball_LocalMultiPlayer:move(dt)
   ball_LocalMultiPlayer:collision()

end

function ball_LocalMultiPlayer:collision()
   if checkCollision(self, player_LocalMultiPlayer) then
      local middelball = self.y + self.Height / 2
      local middelplayer = player_LocalMultiPlayer.y + player_LocalMultiPlayer.Height / 2
      local collisionposition = middelball - middelplayer
      self.xvel = self.speed
      self.yvel = collisionposition * 5
      blip:play()
   end
   if checkCollision(self, playerTwo_LocalMultiPlayer) then
      local middelball = self.y + self.Height / 2
      local middelplayerTwo = playerTwo_LocalMultiPlayer.y + playerTwo_LocalMultiPlayer.Height / 2
      local collisionposition = middelball - middelplayerTwo
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
      playerTwoPointPong = playerTwoPointPong + 1
      messageplayerTwo = {playerTwoPointPong}
      blip_win:play()
      -- playerTwo Side
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


function ball_LocalMultiPlayer:move(dt)
   self.x = self.x + self.xvel * dt
   self.y = self.y + self.yvel * dt

   random_yvel = nil
   collectgarbage("collect")
   math_random()
end

function ball_LocalMultiPlayer:draw()
   love.graphics.setFont(FontPoints)
   love.graphics.setColor(1, 255, 0)

   -- "|"
   local pipeWidth = FontPoints:getWidth("|")
   love.graphics.print("|", love.graphics.getWidth() / 2 - pipeWidth / 2, 10)

   -- Player
   local playerScore = tostring(PlayerPointPong)
   local playerScoreWidth = FontPoints:getWidth(playerScore)
   love.graphics.print(playerScore, love.graphics.getWidth() / 2 - pipeWidth / 2 - playerScoreWidth, 10)

   -- playerTwo
   local playerTwoScore = tostring(playerTwoPointPong)
   local playerTwoScoreWidth = FontPoints:getWidth(playerTwoScore)
   love.graphics.print(playerTwoScore, love.graphics.getWidth() / 2 + pipeWidth / 2, 10)

   -- ball_LocalMultiPlayer
   love.graphics.setColor(ColorSelectedForBall)
   love.graphics.rectangle("fill", self.x, self.y, self.Width, self.Height, 10, 10)
   if WiningPongWhitPoints == true then
   if PlayerPointPong >= tonumber(PointCunt) then
      WiningPong = true
      paused  = true
            -- Game Title
            love.graphics.setFont(Game_Titl_font)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(PlayerOneWin, GameTitle_x, GameTitle_y, button_start_y, "center")
             GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
             GameTitle_y = 80
 end

 if playerTwoPointPong >= tonumber(PointCunt) then
   WiningPong = true
   paused  = true
               -- Game Title
               love.graphics.setFont(Game_Titl_font)
                love.graphics.setColor(255, 255, 255)
                love.graphics.printf(PlayerTwoWin, GameTitle_x, GameTitle_y, button_start_y, "center")
                GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
                GameTitle_y = 80
end
end
end