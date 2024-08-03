keyboard = {}

function keyboard:pong_Button_From_Main_Menu()
   OnStartMenu = false
   OnPongMenu = true
   pongMenu()
   love.resize()
   Nostalgia:stop()
   AIPoint_Two_background = nil
   AIPoint_background = nil
   collectgarbage("collect")
   AIPoint_Two_background = 0
   AIPoint_background = 0
   selectButton = 1
 end

 function keyboard:pong_SP_Btn_pong_Menu()
  love.filesystem.load("pong/SinglePlayer/SinglePlayer.lua")()
  player_SinglePlayer:load()
  ai_SinglePlayer:load()
  ball_SinglePlayer:load()
  AIPointPong = nil
  PlayerPointPong = nil
  collectgarbage("collect")
  AIPointPong = 0
  PlayerPointPong = 0
  love.mouse.setVisible(false)
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
  Nostalgia:play()
  started_SinglePlayer = true
  OnPongMenu = false
  selectButton = 1
 end

 function keyboard:pong_LMP_Btn_pong_Menu()
   love.filesystem.load("pong/LocalMultiPlayer/Main_LocalMultiPlayer.lua")()
   player_LocalMultiPlayer:load()
   playerTwo_LocalMultiPlayer:load()
   ball_LocalMultiPlayer:load()
   AIPointPong = nil
   PlayerPointPong = nil
   collectgarbage("collect")
   AIPointPong = 0
   PlayerPointPong = 0
   love.mouse.setVisible(false)
   love.resize()
   Marcus_Nyman_MLIM_S2:stop()
   Nostalgia:play()
   started_LocalMultiPlayer = true
   OnPongMenu = false
   selectButton = 1
 end

 function keyboard:back_to_MainMenu()
   OnStartMenu = true
   started_SinglePlayer = false
   started_LocalMultiPlayer = false
   started_PinBall = false
   OnPinballGame = false
   paused = false
   OnCustomization = false
   OnCustomizationBackground = false
   OnCredits = false
   PlayerTwoPointPong = nil
   PlayerPointPong = nil
   AIPointPong = nil
   PlayerPointPong = nil
   AIPoint_Two_background = nil
   AIPoint_background = nil
   collectgarbage("collect")
   AIPoint_Two_background = 0
   AIPoint_background = 0
   Marcus_Nyman_MLIM_S2:pause()
   Nostalgia:stop()
   Lobby_Time:stop()
   love.filesystem.load("main.lua")()
   collectgarbage("collect")
   love.resize()
 end
 
 function keyboard:SettingsMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = true
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationPlayerOne = false
  OnCustomizationPlayerTwo = false
  OnCustomizationBall = false
  OnCustomizationBackground = false
  love.filesystem.load("settings.lua")()
  love.resize()
  --Marcus_Nyman_MLIM_S2:stop()
  selectButton = 4
 end

 function keyboard:settingsAudioMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = true
  OnCustomizationBackground = false
  love.filesystem.load("settingsAudio.lua")()
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
  selectButton = 1
 end
 function keyboard:settingsCustomizationMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false
  OnCustomization = true
  OnCustomizationPlayerOne = false
  OnCustomizationPlayerTwo = false
  OnCustomizationBall = false
  OnCustomizationBackground = false
  selectButton = 4
  love.filesystem.load("Customiz/Customization.lua")()
  love.resize()
 end

 function keyboard:settingsCustomizationPlayerOneMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationPlayerOne = true
  OnCustomizationPlayerTwo = false
  OnCustomizationBall = false
  OnCustomizationBackground = false
  love.filesystem.load("Customiz/PlayerOne.lua")()
  love.resize()
  selectButton = 1
 end
 function keyboard:settingsCustomizationPlayerTwoMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationPlayerTwo = true
  love.filesystem.load("Customiz/PlayerTwo.lua")()
  love.resize()
  selectButton = 1
 end
 function keyboard:settingsCustomizationBallMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnCustomizationBackground = false
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationBall = true
  love.filesystem.load("Customiz/Ball.lua")()
  love.resize()
  selectButton = 1
 end
 function keyboard:settingsCustomizationBackgroundMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationBall = false
  OnCustomizationBackground = true
  love.filesystem.load("Customiz/Background.lua")()
  love.resize()
  selectButton = 1
 end
 function keyboard:Credits()
  OnStartMenu = false
  OnSettingsAudio = false
  OnPongMenu = false
  OnCredits = true
  love.filesystem.load("Credits.lua")()
  love.resize()
  selectButton = 1
 end

 function keyboard:Enter_things()
  
      if selectButton == 1 then
        if OnStartMenu then
          keyboard:pong_Button_From_Main_Menu()
        elseif helperOnPongMenu then
          helperOnPongMenu = false
          selectButton = 5
        elseif OnPongMenu then
          keyboard:pong_SP_Btn_pong_Menu()
        elseif paused then
          if WiningPong == true then
            WiningPong = false
            ball_SinglePlayer:load()
            ball_LocalMultiPlayer:load()
          end
          paused = not paused
          love.mouse.setVisible(paused)
          if not paused then
            Lobby_Time:stop()
             Nostalgia:play()
            end

        elseif OnSettings then
          if lang_eng == false then
            lang_eng = true
            lang_swe = false
            lang:language()
          elseif lang_swe == false then
            lang_eng = false
            lang_swe = true
            lang:language()
        end

        elseif OnCustomization then
            keyboard:settingsCustomizationPlayerOneMenu()
            
         elseif helper then
          helper = false
          paused = true
          love.graphics.setBackgroundColor(ColorSelectedForBackground)
          HasNotPlaydeBefore = false
        elseif OnPinballGame then
          keyboard:back_to_MainMenu()
        end

       elseif selectButton == 2 then
        if OnStartMenu then
          Save_stuff()
          love.event.quit()
   
        elseif OnPongMenu then
          keyboard:pong_LMP_Btn_pong_Menu()

        elseif paused then
          helper = true
          paused = false
          selectButton = 1

        elseif OnSettings then
          love.window.setFullscreen(not love.window.getFullscreen())
          love.resize()
          lang:language()
        elseif OnCustomization then
            keyboard:settingsCustomizationPlayerTwoMenu()
          end

        if OnCustomizationPlayerOne then
          ColorSelectedForPlayerOne = ColorSelected
        end

        if OnCustomizationPlayerTwo then
          ColorSelectedForPlayerTwo = ColorSelected
        end

        if OnCustomizationBall then
          ColorSelectedForBall = ColorSelected
        end

        if OnCustomizationBackground then
          ColorSelectedForBackground = ColorSelected
        end

       elseif selectButton == 3 then
        if OnStartMenu then
          keyboard:Credits()
        elseif OnPongMenu then
          keyboard:back_to_MainMenu()
        elseif paused then
          keyboard:back_to_MainMenu()
        elseif OnSettings then
          keyboard:settingsAudioMenu()
        elseif OnCustomization then
          keyboard:settingsCustomizationBallMenu()
        end


        if OnCustomizationPlayerOne then
          ColorSelectedForPlayerOne = ColorSelected
        end

        if OnCustomizationPlayerTwo then
          ColorSelectedForPlayerTwo = ColorSelected
        end

        if OnCustomizationBall then
          ColorSelectedForBall = ColorSelected
        end

        if OnCustomizationBackground then
          ColorSelectedForBackground = ColorSelected
        end

       elseif selectButton == 4 then
        if OnStartMenu then
          keyboard:SettingsMenu()
        elseif OnSettings then
          Save_stuff()
          love.resize()
          keyboard:back_to_MainMenu()
        elseif paused then
          return
        elseif OnCredits then
          keyboard:back_to_MainMenu()
        elseif OnCustomization then
            keyboard:SettingsMenu()
        end


        if OnCustomizationPlayerOne then
          ColorSelectedForPlayerOne = ColorSelected
        end

        if OnCustomizationPlayerTwo then
          ColorSelectedForPlayerTwo = ColorSelected
        end

        if OnCustomizationBall then
          ColorSelectedForBall = ColorSelected
        end

        if OnCustomizationBackground then
          ColorSelectedForBackground = ColorSelected
        end


      elseif selectButton == 5 then
        if OnPongMenu then
        helperOnPongMenu = true
        selectButton = 1
      elseif OnSettings then
          keyboard:settingsCustomizationMenu()
      elseif OnCustomization then
          keyboard:settingsCustomizationBackgroundMenu()
      end
          if OnCustomizationPlayerOne then
            ColorSelectedForPlayerOne = ColorSelected
          end
  
          if OnCustomizationPlayerTwo then
            ColorSelectedForPlayerTwo = ColorSelected
          end
  
          if OnCustomizationBall then
            ColorSelectedForBall = ColorSelected
          end
  
          if OnCustomizationBackground then
            ColorSelectedForBackground = ColorSelected
          end


       elseif selectButton == 6 then
        if OnSettingsAudio then
          Save_stuff()
          keyboard:SettingsMenu()
        end
        if OnCustomizationPlayerOne then
          ColorSelectedForPlayerOne = ColorSelected
        end

        if OnCustomizationPlayerTwo then
          ColorSelectedForPlayerTwo = ColorSelected
        end

        if OnCustomizationBall then
          ColorSelectedForBall = ColorSelected
        end

        if OnCustomizationBackground then
          ColorSelectedForBackground = ColorSelected
        end

        elseif selectButton == 7 then
        if OnCustomizationPlayerOne then
          keyboard:settingsCustomizationMenu()
          Save_stuff()
          selectButton = 1
        end
        if OnCustomizationPlayerTwo then
          keyboard:settingsCustomizationMenu()
          Save_stuff()
          selectButton = 2
        end
        if OnCustomizationBall then
          keyboard:settingsCustomizationMenu()
          Save_stuff()
          selectButton = 3
       end

       if OnCustomizationBackground then
        keyboard:settingsCustomizationMenu()
        Save_stuff()
        selectButton = 4
        love.graphics.setBackgroundColor(ColorSelectedForBackground)
       end
      end
    end

    function keyboard:MenuUp()
      if OnCustomizationPlayerOne 
      or OnCustomizationPlayerTwo 
      or OnCustomizationBall then
        if selectButton == 1 then
          selectButton = 7
        elseif selectButton == 2 then
          selectButton = 5
        elseif selectButton == 5 then
          selectButton = 4
        elseif selectButton == 4 then
          selectButton = 3
        elseif selectButton == 3 then
          selectButton = 2
        elseif selectButton == 7 then
          selectButton = 1
        end
      end

      if OnCustomizationBackground then
        if selectButton == 2 then
          selectButton = 4
        elseif selectButton == 4 then
          selectButton = 3
        elseif selectButton == 3 then
          selectButton = 2
        elseif selectButton == 1 then
          selectButton = 7
        elseif selectButton == 7 then
          selectButton = 1
        end
      end

      if OnCustomization then
        if selectButton == 4 then
          selectButton = 3
        elseif selectButton == 3 then
          selectButton = 2
        elseif selectButton == 2 then
          selectButton = 1
        elseif selectButton == 1 then
          selectButton = 4
        end
      end
      

        if OnSettingsAudio then
          if selectButton == 6 then
          selectButton = 5
          elseif selectButton == 5 then
            selectButton = 4
          elseif selectButton == 4 then
            selectButton = 3
          elseif selectButton == 3 then
            selectButton = 2
          elseif selectButton == 2 then
            selectButton = 1
          elseif selectButton == 1 then
            selectButton = 6
          end
          end

        if OnPongMenu or paused then
          if selectButton == 3 then
            selectButton = 2
          elseif selectButton == 2 then
            selectButton = 1
          elseif selectButton == 1 then
            selectButton = 3
          end
          end

          if OnStartMenu then
            if selectButton == 1 then
              selectButton = 2
            elseif selectButton == 2 then
              selectButton = 1
            end
            end

          if OnSettings then
            if selectButton == 1 then
            selectButton = 4
            elseif selectButton == 4 then
              selectButton = 3
            elseif selectButton == 3 then
              selectButton = 2
            elseif selectButton == 2 then
              selectButton = 1
            end
            end

            if OnCredits then
              if selectButton == 4 then
                selectButton = 3
              elseif selectButton == 3 then
                selectButton = 2
              elseif selectButton == 2 then
                selectButton = 1
              elseif selectButton == 1 then
                selectButton = 4
              end
              end

    end
    
    function keyboard:MenuDown()
      if OnCustomizationPlayerOne 
      or OnCustomizationPlayerTwo 
      or OnCustomizationBall then
        if selectButton == 1 then
          selectButton = 7
        elseif selectButton == 2 then
          selectButton = 3
        elseif selectButton == 3 then
          selectButton = 4
        elseif selectButton == 4 then
          selectButton = 5
        elseif selectButton == 7 then
          selectButton = 1
        end
      end

      if OnCustomizationBackground then
        if selectButton == 2 then
          selectButton = 3
        elseif selectButton == 3 then
          selectButton = 4
        elseif selectButton == 4 then
          selectButton = 2
        elseif selectButton == 1 then
          selectButton = 7
        elseif selectButton == 7 then
          selectButton = 1
        end
      end


      if OnCustomization then 
        if selectButton == 1 then
          selectButton = 2
          elseif selectButton == 2 then
            selectButton = 3
          elseif selectButton == 3 then
            selectButton = 4
          elseif selectButton == 4 then
            selectButton = 1
          end
          end

        if OnSettingsAudio then
          if selectButton == 1 then
          selectButton = 2
          elseif selectButton == 2 then
            selectButton = 3
          elseif selectButton == 3 then
            selectButton = 4
          elseif selectButton == 4 then
            selectButton = 5
          elseif selectButton == 5 then
            selectButton = 6
          elseif selectButton == 6 then
            selectButton = 1
          end
          end

        if OnPongMenu or paused then
          if selectButton == 1 then
            selectButton = 2
          elseif selectButton == 2 then
            selectButton = 3
          elseif selectButton == 3 then
            selectButton = 1
          end
          end

          if OnStartMenu then
            if selectButton == 2 then
              selectButton = 1
            elseif selectButton == 1 then
              selectButton = 2
            end
            end

          if OnSettings then
            if selectButton == 1 then
              selectButton = 2
            elseif selectButton == 2 then
              selectButton = 3
            elseif selectButton == 3 then
              selectButton = 4
            elseif selectButton == 4 then
              selectButton = 1
            end
            end

          if OnCredits then
            if selectButton == 1 then
              selectButton = 2
            elseif selectButton == 2 then
              selectButton = 3
            elseif selectButton == 3 then
              selectButton = 4
            elseif selectButton == 4 then
              selectButton = 1
            end
            end
    end

    function keyboard:MenuRight()

      if OnStartMenu then
        if selectButton == 3 then
          selectButton = 2
          elseif selectButton == 2 then
            selectButton = 4
            end
      end

      if OnPongMenu then
        if selectButton == 4 then
          selectButton = 3
          elseif selectButton == 3 then
            selectButton = 5
            end
      end

      if OnSettings then
        if selectButton == 4  then
          selectButton = 5
          end
        end

        if OnCustomization then
          if selectButton == 4 then
            selectButton = 5
            end
          end
    
          if OnCustomizationPlayerOne 
          or OnCustomizationPlayerTwo 
          or OnCustomizationBall then
            if selectButton == 1 then
            selectButton = 2
          end
          end

          if OnCustomizationBackground then
            if selectButton == 1 then
            selectButton = 2
          end
          end

      if OnSettingsAudio then
        if selectButton == 1 then
          volumeMainV = math.min(volumeMainV + 0.1, 1)
        elseif selectButton == 2 then
          volumeMusicV = math.min(volumeMusicV + 0.1, 1)
        elseif selectButton == 3 then
          point_GivenV = math.min(point_GivenV + 0.1, 1)
        elseif selectButton == 4 then
          volumeHitV = math.min(volumeHitV + 0.1, 1)
        elseif selectButton == 5 then
          volumeButton_hitV = math.min(volumeButton_hitV + 0.1, 1)
        end
        love.resize()
      end
  end
  function keyboard:MenuLeft()

    if OnStartMenu then
      if selectButton == 4 then
        selectButton = 2
        elseif selectButton == 2 then
          selectButton = 3
          end
    end

    if OnPongMenu then
      if selectButton == 5 then
        selectButton = 3
        elseif selectButton == 3 then
          selectButton = 4
          end
    end

    if OnSettings then
      if selectButton == 5  then
        selectButton = 4
        end
      end

        if OnCustomization then
          if selectButton == 5 then
            selectButton = 4
            end
          end

          if OnCustomizationPlayerOne 
          or OnCustomizationPlayerTwo 
          or OnCustomizationBall then
            if selectButton == 2 
            or selectButton == 3
            or selectButton == 4
            or selectButton == 5 then
            selectButton = 1
          end
          end
          
          if OnCustomizationBackground then
            if selectButton == 2 
            or selectButton == 3
            or selectButton == 4 then
            selectButton = 1
          end
          end

    if OnSettingsAudio then
      if selectButton == 1 then
        volumeMainV = math.min(volumeMainV - 0.1, 1)
      elseif selectButton == 2 then
        volumeMusicV = math.min(volumeMusicV - 0.1, 1)
      elseif selectButton == 3 then
        point_GivenV = math.min(point_GivenV - 0.1, 1)
      elseif selectButton == 4 then
        volumeHitV = math.min(volumeHitV - 0.1, 1)
      elseif selectButton == 5 then
        volumeButton_hitV = math.min(volumeButton_hitV - 0.1, 1)
      end
      love.resize()
    end
  end

    function Save_stuff()
      local file = io.open("settings.conf", "r+")
      file:seek("set")

      if lang_eng == false then
        file:write("Lang__swe\n")
      elseif lang_swe == false then
        file:write("Lang__eng\n")
      end

       if (love.window.getFullscreen() == true) then
        file:write("Fullscreen__on\n")
       elseif (love.window.getFullscreen() == false) then
        file:write("Fullscreen__off\n")
       end
      
      file:write(volumeMainV .. "\n")
      file:write(volumeMusicV .. "\n")
      file:write(point_GivenV .. "\n")
      file:write(volumeHitV .. "\n")
      file:write(volumeButton_hitV .. "\n")

      file:write(PointCunt .. "\n")
      
  -- Player 1
      if ColorSelectedForPlayerOne == yellow then
        ColorSelectedForPlayerOne = "yellow"
    elseif ColorSelectedForPlayerOne == green then
        ColorSelectedForPlayerOne = "green"
    elseif ColorSelectedForPlayerOne == red then
        ColorSelectedForPlayerOne = "red"
    elseif ColorSelectedForPlayerOne == white then
        ColorSelectedForPlayerOne = "white"
    end
      file:write(ColorSelectedForPlayerOne .. "\n")

  -- Player 2
  if ColorSelectedForPlayerTwo == yellow then
    ColorSelectedForPlayerTwo = "yellow"
elseif ColorSelectedForPlayerTwo == green then
  ColorSelectedForPlayerTwo = "green"
elseif ColorSelectedForPlayerTwo == red then
  ColorSelectedForPlayerTwo = "red"
elseif ColorSelectedForPlayerTwo == white then
  ColorSelectedForPlayerTwo = "white"
end
  file:write(ColorSelectedForPlayerTwo .. "\n")
  -- Ball
  if ColorSelectedForBall == yellow then
    ColorSelectedForBall = "yellow"
elseif ColorSelectedForBall == green then
  ColorSelectedForBall = "green"
elseif ColorSelectedForBall == red then
  ColorSelectedForBall = "red"
elseif ColorSelectedForBall == white then
  ColorSelectedForBall = "white"
end
  file:write(ColorSelectedForBall .. "\n")

  -- Background
if ColorSelectedForBackground == slategray_backgrund then
  ColorSelectedForBackground = "slategray_backgrund"
elseif ColorSelectedForBackground == green_backgrund then
  ColorSelectedForBackground = "green_backgrund"
elseif ColorSelectedForBackground == white_backgrund then
  ColorSelectedForBackground = "white_backgrund"
end
  file:write(ColorSelectedForBackground .. "\n")

  file:close()
  collectgarbage("collect")


    -- Player 1
  if ColorSelectedForPlayerOne == "yellow" then
    ColorSelectedForPlayerOne = yellow
elseif ColorSelectedForPlayerOne == "green" then
    ColorSelectedForPlayerOne = green
elseif ColorSelectedForPlayerOne == "red" then
    ColorSelectedForPlayerOne = red
elseif ColorSelectedForPlayerOne == "white" then
    ColorSelectedForPlayerOne = white
end
  -- Player 2
  if ColorSelectedForPlayerTwo == "yellow" then
    ColorSelectedForPlayerTwo = yellow
elseif ColorSelectedForPlayerTwo == "green" then
  ColorSelectedForPlayerTwo = green
elseif ColorSelectedForPlayerTwo == "red" then
  ColorSelectedForPlayerTwo = red
elseif ColorSelectedForPlayerTwo == "white" then
  ColorSelectedForPlayerTwo = white
end
  -- ball
  if ColorSelectedForBall == "yellow" then
    ColorSelectedForBall = yellow
elseif ColorSelectedForBall == "green" then
  ColorSelectedForBall = green
elseif ColorSelectedForBall == "red" then
  ColorSelectedForBall = red
elseif ColorSelectedForBall == "white" then
  ColorSelectedForBall = white
end

-- Background
if ColorSelectedForBackground == "yellow_backgrund" then
    ColorSelectedForBackground = yellow_backgrund
elseif ColorSelectedForBackground == "slategray_backgrund" then
  ColorSelectedForBackground = slategray_backgrund
elseif ColorSelectedForBackground == "green_backgrund" then
  ColorSelectedForBackground = green_backgrund
elseif ColorSelectedForBackground == "red_backgrund" then
  ColorSelectedForBackground = red_backgrund
elseif ColorSelectedForBackground == "white_backgrund" then
  ColorSelectedForBackground = white_backgrund
end
    end
    
    function keyboard:locadsaved()
    local file = io.open("settings.conf", "r")
    file:seek("set")
    -- läser alla rader
    local line = file:read("*line")
    local line2 = file:read("*line")
    local line3 = file:read("*line")
    local line4 = file:read("*line")
    local line5 = file:read("*line")
    local line6 = file:read("*line")
    local line7 = file:read("*line")
    local line8 = file:read("*line")
    local line9 = file:read("*line")
    local line10 = file:read("*line")
    local line11 = file:read("*line")
    local line12 = file:read("*line")
    volumeMainV = line3
    volumeMusicV = line4
    point_GivenV = line5
    volumeHitV = line6
    volumeButton_hitV = line7
    PointCunt = line8
    ColorSelectedForPlayerOne = line9 --player_1
    ColorSelectedForPlayerTwo = line10 --player_2
    ColorSelectedForBall = line11 --Ball
    ColorSelectedForBackground = line12 --Background

    file:close()
    local line = nil
    local line2 = nil
    local line3 = nil
    local line4 = nil
    local line5 = nil
    local line6 = nil
    local line7 = nil
    local line8 = nil
    local line9 = nil
    local line10 = nil
    local line11 = nil
    local line12 = nil
    collectgarbage("collect")
    if volumeMainV == nil then
      volumeMainV = 0.5
    end
    if volumeMusicV == nil then
      volumeMusicV = 0.5
    end
    if point_GivenV == nil then
      point_GivenV = 0.5
    end
    if volumeHitV == nil then 
      volumeHitV = 0.5
    end
    if volumeButton_hitV == nil then
      volumeButton_hitV = 0.5
    end
    if PointCunt == nil then
      PointCunt = 11
      end
      -- Player 1
      if ColorSelectedForPlayerOne == "yellow" then
        ColorSelectedForPlayerOne = yellow
    elseif ColorSelectedForPlayerOne == "green" then
        ColorSelectedForPlayerOne = green
    elseif ColorSelectedForPlayerOne == "red" then
        ColorSelectedForPlayerOne = red
    elseif ColorSelectedForPlayerOne == "white" then
        ColorSelectedForPlayerOne = white
      else
        ColorSelectedForPlayerOne = green
    end
      -- Player 2
      if ColorSelectedForPlayerTwo == "yellow" then
        ColorSelectedForPlayerTwo = yellow
    elseif ColorSelectedForPlayerTwo == "green" then
      ColorSelectedForPlayerTwo = green
    elseif ColorSelectedForPlayerTwo == "red" then
      ColorSelectedForPlayerTwo = red
    elseif ColorSelectedForPlayerTwo == "white" then
      ColorSelectedForPlayerTwo = white
    else
      ColorSelectedForPlayerTwo = red
    end
  -- ball
  if ColorSelectedForBall == "yellow" then
    ColorSelectedForBall = yellow
elseif ColorSelectedForBall == "green" then
  ColorSelectedForBall = green
elseif ColorSelectedForBall == "red" then
  ColorSelectedForBall = red
elseif ColorSelectedForBall == "white" then
  ColorSelectedForBall = white
else
  ColorSelectedForBall = yellow
end

  -- Background
if ColorSelectedForBackground == "slategray_backgrund" then
  ColorSelectedForBackground = slategray_backgrund
elseif ColorSelectedForBackground == "green_backgrund" then
  ColorSelectedForBackground = green_backgrund
elseif ColorSelectedForBackground == "white_backgrund" then
  ColorSelectedForBackground = white_backgrund
else
  ColorSelectedForBackground = slategray_backgrund
end
    end


 function love.keypressed(key)
  if selectButton == 4 and OnPongMenu then
    if key == "x" then
       
      if tonumber(PointCunt) <= 1 then
        PointCunt = 1
      else
        PointCunt = PointCunt - 1
        Save_stuff()
      end
    elseif key == "y" then
        if tonumber(PointCunt) >= 99999 then
          PointCunt = 99999
        else
          PointCunt = PointCunt + 1
          Save_stuff()
        end
    end
  end
   if key == "f11" then
     love.window.setFullscreen(not love.window.getFullscreen())
     love.resize()
     Save_stuff()
   end
   if key == "escape"
   or key == "power"
   or key == "pause"
   or key == "home"
   or key == "end"
   or key == "menu"
   then
    if  (started_SinglePlayer or started_LocalMultiPlayer) then
      if not helper then
       paused = not paused
       love.mouse.setVisible(paused)
       if not paused then
        Nostalgia:play()
        Lobby_Time:stop()
        else
          Lobby_Time:play()
       end
      end
   end
   end
   if OnStartMenu 
   or OnPongMenu 
   or paused 
   or OnSettings 
   or OnSettingsAudio 
   or OnCustomization
   or OnCustomizationBall
   or OnCustomizationPlayerOne
   or OnCustomizationPlayerTwo
   or OnCustomizationBackground
   or OnCredits
   then
    love.mouse.setPosition( 0, 0 )
   if key == "up" then
    keyboard:MenuUp()
    if not OnSettingsAudio then
      button_blop:play()
      end
   elseif key == "down" then
    keyboard:MenuDown()
    if not OnSettingsAudio then
      button_blop:play()
      end
   elseif key == "right" then
    keyboard:MenuRight()
    if not OnSettingsAudio then
      button_blop:play()
      end
   elseif key == "left" then
    keyboard:MenuLeft()
    if not OnSettingsAudio then
      button_blop:play()
      end
   end
  end
   -- Enter things
   if key == "return" then
    keyboard:Enter_things()
    if not OnSettingsAudio then
      button_blop:play()
      end
 end
end

 -- Controler
 function love.gamepadpressed( joystick, button )
   if button == "b"
   or button == "back"
   or button == "start"
   then
     if  (started_SinglePlayer or started_LocalMultiPlayer or OnPinballGame) then
      if not helper then
       paused = not paused
       love.mouse.setVisible(paused)
       if not paused then
        Nostalgia:play()
        Lobby_Time:stop()
        else
          Lobby_Time:play()
       end
     end
    end
  end
  if OnStartMenu or OnPongMenu or paused or OnSettings or OnSettingsAudio or OnCredits then
    love.mouse.setPosition( 0, 0 )
    if button == "dpup" then
      keyboard:MenuUp()
      if not OnSettingsAudio then
        button_blop:play()
        end
    elseif button == "dpdown" then
      keyboard:MenuDown()
      if not OnSettingsAudio then
        button_blop:play()
        end
    elseif button == "dpright" then
      keyboard:MenuRight()
      if not OnSettingsAudio then
        button_blop:play()
        end
    elseif button == "dpleft" then
      keyboard:MenuLeft()
      if not OnSettingsAudio then
        button_blop:play()
        end
    end
  end
   -- Enter things
   if button == "a" then
    if not OnSettingsAudio then
      button_blop:play()
      end
    keyboard:Enter_things()
 end
 if selectButton == 4 and OnPongMenu then
  if button == "x" then
    if tonumber(PointCunt) <= 1 then
      PointCunt = 1
      else
        PointCunt = PointCunt - 1
        Save_stuff()
    end
  elseif button == "y" then
      if tonumber(PointCunt) >= 99999 then
        PointCunt = 99999
      else
        PointCunt = PointCunt + 1
        Save_stuff()
      end
  end
end
end

 function love.focus(focus)
   if (started_SinglePlayer or started_LocalMultiPlayer or OnPinballGame) then
    if not helper then
     if not focus then
       paused = true
       love.mouse.setVisible(paused)
     end
   end
 end
 end

 function love.mousereleased( x, y, button, istouch, presses )
      keyboard:Enter_things()
      if not OnSettingsAudio then
      button_blop:play()
      end
 end
