
function love.resize(w, h)
   if OnStartMenu  then
      love.draw()
      love.load()
   elseif OnSettingsAudio then
      love.filesystem.load("settingsAudio.lua")()
      -- Singel Player
   elseif started_SinglePlayer then
      player_SinglePlayer:load()
      player_SinglePlayer:draw()

      ai_SinglePlayer:load()
      ai_SinglePlayer:draw()

      ball_SinglePlayer:load()
      ball_SinglePlayer:draw()
      -- Local MultiPlayer
   elseif started_LocalMultiPlayer then
      player_LocalMultiPlayer:load()
      player_LocalMultiPlayer:draw()

      playerTwo_LocalMultiPlayer:load()
      playerTwo_LocalMultiPlayer:draw()

      ball_LocalMultiPlayer:load()
      ball_LocalMultiPlayer:draw()
      elseif OnPongMenu then
               -- background
               ai_background:load()
               ai_Two_background:load()
               ball_background:load()

               ai_background:draw()
               ai_Two_background:draw()
               ball_background:draw()
   end
end
