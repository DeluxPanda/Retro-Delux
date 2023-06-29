keyboard = {}
function keyboard:pong_Button_From_Main_Menu()
   OnStartMenu = false
   OnPongMenu = true
   pongMenu()
   love.resize()
   Nostalgia:stop()
 end

 function keyboard:pong_SP_Btn_pong_Menu()
   started_SinglePlayer = true
   OnPongMenu = false
   love.filesystem.load("pong/SinglePlayer/SinglePlayer.lua")()
   player_SinglePlayer:load()
   ai_SinglePlayer:load()
   ball_SinglePlayer:load()
   PlayerTowPointPong = 0
   PlayerPointPong = 0
   love.mouse.setVisible(false)
   love.resize()
   Marcus_Nyman_MLIM_S2:stop()
   Nostalgia:play()
 end
 
 function keyboard:pong_LMP_Btn_pong_Menu()
   started_LocalMultiPlayer = true
   OnPongMenu = false
   love.filesystem.load("pong/LocalMultiPlayer/Main_LocalMultiPlayer.lua")()
   player_LocalMultiPlayer:load()
   playerTow_LocalMultiPlayer:load()
   ball_LocalMultiPlayer:load()
   AIPointPong = 0
   PlayerPointPong = 0
   love.mouse.setVisible(false)
   love.resize()
   Marcus_Nyman_MLIM_S2:stop()
   Nostalgia:play()
 end
 function keyboard:pinball_Buttom_From_Main_Menu()
  print("pinball inte klart")
  love.system.openURL("https://deluxerpanda.se/")
 end
 function keyboard:back_to_MainMenu()
   OnStartMenu = true
   started_SinglePlayer = false
   started_LocalMultiPlayer = false
   paused = false
   OnCustomization = false

   Marcus_Nyman_MLIM_S2:stop()
   Nostalgia:stop()
   Lobby_Time:stop()
   love.filesystem.load("main.lua")()
   AIPoint_Tow_background = 0
   AIPoint_background = 0
   love.resize()
 end
 
 function keyboard:SettingsMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = true
  OnSettingsAudio = false

  OnCustomization = false
  OnCustomizationPlayerOne = false
  OnCustomizationPlayerTow = false
  OnCustomizationBall = false
  selectButton = 1
  love.filesystem.load("settings.lua")()
  love.resize()
  --Marcus_Nyman_MLIM_S2:stop()
 end

 function keyboard:settingsAudioMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = true
  selectButton = 1
  love.filesystem.load("settingsAudio.lua")()
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
 end
 function keyboard:settingsCustomizationMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false

  OnCustomization = true
  OnCustomizationPlayerOne = false
  OnCustomizationPlayerTow = false
  OnCustomizationBall = false

  selectButton = 1
  love.filesystem.load("Customiz/Customization.lua")()
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
 end
 function keyboard:settingsCustomizationPlayerOneMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false

  OnCustomization = false
  OnCustomizationPlayerOne = true
  OnCustomizationPlayerTow = false
  OnCustomizationBall = false

  selectButton = 1
  love.filesystem.load("Customiz/PlayerOne.lua")()
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
 end
 function keyboard:settingsCustomizationPlayerTowMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationPlayerTow = true
  love.filesystem.load("Customiz/PlayerTow.lua")()
  selectButton = 1
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
 end
 function keyboard:settingsCustomizationBallMenu()
  OnStartMenu = false
  OnPongMenu = false
  OnSettings = false
  OnSettingsAudio = false
  OnCustomization = false
  OnCustomizationBall = true
  selectButton = 1
  love.filesystem.load("Customiz/Ball.lua")()
  love.resize()
  Marcus_Nyman_MLIM_S2:stop()
 end
 function keyboard:Credits()
   print("Credits")
 end
 function keyboard:Enter_things()
  
      if selectButton == 1 then
        if OnStartMenu then
          keyboard:pong_Button_From_Main_Menu()
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
        end
        if OnCustomization then

            keyboard:settingsCustomizationPlayerOneMenu()
         end


       elseif selectButton == 2 then
        if OnStartMenu then
          keyboard:pinball_Buttom_From_Main_Menu()
        elseif OnPongMenu then
          keyboard:pong_LMP_Btn_pong_Menu()
        elseif paused then
          keyboard:back_to_MainMenu()
        elseif OnSettings then
          love.window.setFullscreen(not love.window.getFullscreen())
          love.resize()
          lang:language()
        elseif OnCustomization then
            keyboard:settingsCustomizationPlayerTowMenu()
        end


       elseif selectButton == 3 then
        if OnStartMenu then
          love.event.quit()
        elseif OnPongMenu then
          keyboard:back_to_MainMenu()
        elseif paused then
          love.event.quit()
        elseif OnSettings then
          keyboard:settingsAudioMenu()
        end
        if OnCustomization then
            keyboard:settingsCustomizationBallMenu()
        end


       elseif selectButton == 4 then
        if OnStartMenu then
          keyboard:Credits()
        elseif OnSettings then
          Save_stuff()
          love.resize()
          keyboard:back_to_MainMenu()
        elseif OnPongMenu then
          keyboard:Credits()
        elseif paused then
          return
        end
        if OnCustomization then
          keyboard:SettingsMenu()
        end



       elseif selectButton == 5 then
        if OnStartMenu then
          keyboard:SettingsMenu()
        elseif OnPongMenu then
          keyboard:SettingsMenu()
        elseif paused then
          return
        elseif OnSettings then
          keyboard:settingsCustomizationMenu()
        end



       elseif selectButton == 6 then
        if OnSettingsAudio then
          Save_stuff()
          keyboard:SettingsMenu()
        end
        elseif selectButton == 7 then
        if OnCustomizationPlayerOne then
          keyboard:settingsCustomizationMenu()
          Save_stuff()
       end
      end
    end

    function keyboard:MenuUp()
      if OnCustomizationPlayerOne then
        if selectButton == 1 then
          selectButton = 7
          elseif selectButton == 7 then
            selectButton = 1
        end
      end
      if OnCustomization then
        if selectButton == 4 then
          selectButton = 3
          button_blop:play()
        elseif selectButton == 3 then
          selectButton = 2
          button_blop:play()
        elseif selectButton == 2 then
          selectButton = 1
          button_blop:play()
        elseif selectButton == 1 then
          selectButton = 4
          button_blop:play()
        end
      end

      if OnSettings then
        if selectButton == 4 then
          selectButton = 3
          button_blop:play()
        elseif selectButton == 3 then
          selectButton = 2
          button_blop:play()
        elseif selectButton == 2 then
          selectButton = 1
          button_blop:play()
        elseif selectButton == 1 then
          selectButton = 4
          button_blop:play()
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

        if OnStartMenu or OnPongMenu or paused then
          if selectButton == 3 then
            selectButton = 2
            button_blop:play()
          elseif selectButton == 2 then
            selectButton = 1
            button_blop:play()
          elseif selectButton == 1 then
            selectButton = 3
            button_blop:play()
          end
          end
    end
    
    function keyboard:MenuDown()
      if OnCustomizationPlayerOne then
        if selectButton == 7 then
          selectButton = 1
          elseif selectButton == 1 then
            selectButton = 7
        end
      end
    if OnCustomizationPlayerOne then
      if selectButton == 2 then
        selectButton = 3
        button_blop:play()
        elseif selectButton == 3 then
          selectButton = 4
          button_blop:play()
        elseif selectButton == 4 then
          selectButton = 5
          button_blop:play()
        elseif selectButton == 6 then
          selectButton = 2
          button_blop:play()
        end
    end



      if OnCustomization then 
        if selectButton == 1 then
          selectButton = 2
          button_blop:play()
          elseif selectButton == 2 then
            selectButton = 3
            button_blop:play()
          elseif selectButton == 3 then
            selectButton = 4
            button_blop:play()
          elseif selectButton == 4 then
            selectButton = 1
            button_blop:play()
          end
          end

      if OnSettings then
        if selectButton == 1 then
        selectButton = 2
        button_blop:play()
        elseif selectButton == 2 then
          selectButton = 3
          button_blop:play()
        elseif selectButton == 3 then
          selectButton = 4
          button_blop:play()
        elseif selectButton == 4 then
          selectButton = 1
          button_blop:play()
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

        if OnStartMenu or OnPongMenu or paused then
          if selectButton == 1 then
            selectButton = 2
            button_blop:play()
          elseif selectButton == 2 then
            selectButton = 3
            button_blop:play()
          elseif selectButton == 3 then
            selectButton = 1
            button_blop:play()
          end
          end
    end

    function keyboard:MenuLeft()
      if OnCustomizationPlayerOne then
        return
      end
      if OnSettingsAudio then
        if selectButton == 1 then
          volumeMainV = volumeMainV - 0.1
          love.resize()
          if volumeMainV == 0.1 then
            volumeMainV = 0.1
          end

        elseif selectButton == 2 then
          volumeMusicV = volumeMusicV - 0.1
          love.resize()
          if volumeMusicV == 0.1 then
            volumeMusicV = 0.1
          end

        elseif selectButton == 3 then
          point_GivenV = point_GivenV - 0.1
          love.resize()
          if point_GivenV == 0.1 then
            point_GivenV = 0.1
          end

        elseif selectButton == 4 then
          volumeHitV = volumeHitV - 0.1
          love.resize()
          if volumeHitV == 0.1 then
            volumeHitV = 0.1
          end

        elseif selectButton == 5 then
          volumeButton_hitV = volumeButton_hitV - 0.1
        love.resize()
        if volumeButton_hitV == 0.1 then
          volumeButton_hitV = 0.1
        end
        end
        end

if OnSettings then
  if selectButton == 5 then
    selectButton = 4
    end
end
if OnCustomization then
  return
end

        if not OnSettingsAudio then
        if paused then
          return
        elseif selectButton == 5 then
          selectButton = 3
          button_blop:play()
        elseif selectButton == 4 then
          return
        else
          selectButton = 4
          button_blop:play()
        end
  
  
        if selectButton == 1 then
          if OnStartMenu or OnPongMenu then
          OnPongButton = true
          love.resize()
          else
          OnPongButton = false
          end
        elseif selectButton == 2 then
          if not OnPongMenu then
            OnPongButton = false
            else
              OnPongButton = true
            end
            else
              if not OnPongMenu then
                OnPongButton = false
                else
                  OnPongButton = true
                end
        end
      end
    end

    function keyboard:MenuRight()

      if OnCustomizationPlayerOne then
        if selectButton == 1 then
          selectColorBar = 1
          selectButton = 1
          if selectColorBar == 1 then
            selectColorBar = 2
            selectButton = 1
          elseif selectColorBar == 2 then
              selectColorBar = 3
              selectButton = 1
            elseif selectColorBar == 3 then
              selectColorBar = 4
              selectButton = 1
            elseif selectColorBar == 4 then
              selectColorBar = 5
              selectButton = 1
            elseif selectColorBar == 5 then
              selectColorBar = 1
              selectButton = 1
          end
          end
      end


      if OnCustomization then
        return
      end

      if OnSettingsAudio then
        if selectButton == 1 then
          volumeMainV = volumeMainV + 0.1
          love.resize()
          if volumeMainV == 1 then
            volumeMainV = 1
          end

        elseif selectButton == 2 then
          volumeMusicV = volumeMusicV + 0.1
          love.resize()
          if volumeMusicV == 1 then
            volumeMusicV = 1
          end

        elseif selectButton == 3 then
          point_GivenV = point_GivenV + 0.1
          love.resize()
          if point_GivenV == 1 then
            point_GivenV = 1
          end

        elseif selectButton == 4 then
          volumeHitV = volumeHitV + 0.1
          love.resize()
          if volumeHitV == 1 then
            volumeHitV = 1
          end

        elseif selectButton == 5 then
          volumeButton_hitV = volumeButton_hitV + 0.1
        love.resize()
        if volumeButton_hitV == 1 then
          volumeButton_hitV = 1
        end
        end
        end

        if OnSettings then
          if selectButton == 4 then
            selectButton = 5
            end
        end
        if not OnSettingsAudio then
      left = 0
      right = 0
      if paused then
        return
      elseif selectButton == 4 then
        selectButton = 3
        button_blop:play()
      elseif selectButton == 5 then
         left = 1
         right = 1
        return
      else
        selectButton = 5
        button_blop:play()
      end

      if selectButton == 1 then
        if OnStartMenu or OnPongMenu then
        OnPongButton = true
        love.resize()
        else
        OnPongButton = false
        end
      elseif selectButton == 2 then
        if not OnPongMenu then
          OnPongButton = false
          else
            OnPongButton = true
          end
          else
            if not OnPongMenu then
              OnPongButton = false
              else
                OnPongButton = true
              end
      end
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

      if ColorSelectedForPlayerOne == yellow then
        ColorSelectedForPlayerOne = "yellow"
    elseif ColorSelectedForPlayerOne == slategray then
        ColorSelectedForPlayerOne = "slategray"
    elseif ColorSelectedForPlayerOne == green then
        ColorSelectedForPlayerOne = "green"
    elseif ColorSelectedForPlayerOne == red then
        ColorSelectedForPlayerOne = "red"
    elseif ColorSelectedForPlayerOne == white then
        ColorSelectedForPlayerOne = "white"
    end
      file:write(ColorSelectedForPlayerOne .. "\n")
      file:close()
      collectgarbage("collect")
      if ColorSelectedForPlayerOne == "yellow" then
        ColorSelectedForPlayerOne = yellow
    elseif ColorSelectedForPlayerOne == "slategray" then
        ColorSelectedForPlayerOne = slategray
    elseif ColorSelectedForPlayerOne == "green" then
        ColorSelectedForPlayerOne = green
    elseif ColorSelectedForPlayerOne == "red" then
        ColorSelectedForPlayerOne = red
    elseif ColorSelectedForPlayerOne == "white" then
        ColorSelectedForPlayerOne = white
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
    volumeMainV = line3
    volumeMusicV = line4
    point_GivenV = line5
    volumeHitV = line6
    volumeButton_hitV = line7
    ColorSelectedForPlayerOne = line8 --player_1
    ColorSelectedForPlayerTow = line9 --player_2
    ColorSelectedForBall = line10 --Ball
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
    collectgarbage("collect")
    if ColorSelectedForPlayerOne == "yellow" then
      ColorSelectedForPlayerOne = yellow
  elseif ColorSelectedForPlayerOne == "slategray" then
      ColorSelectedForPlayerOne = slategray
  elseif ColorSelectedForPlayerOne == "green" then
      ColorSelectedForPlayerOne = green
  elseif ColorSelectedForPlayerOne == "red" then
      ColorSelectedForPlayerOne = red
  elseif ColorSelectedForPlayerOne == "white" then
      ColorSelectedForPlayerOne = white
  end
    end


 function love.keypressed(key)
  if key == "r" then
 love.event.quit("restart")
  end
  if key == "h" then
    ColorSelectedForPlayerOne = ColorSelected
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
     if not (OnStartMenu or OnPongMenu or OnSettings or OnSettingsAudio) then
       paused = not paused
       love.mouse.setVisible(paused)
       if not paused then
        Nostalgia:play()
        Lobby_Time:stop()
        else
          Lobby_Time:play()
       end
     elseif OnPongMenu or OnSettings then
      keyboard:back_to_MainMenu()
      end
   end
   if OnStartMenu 
   or OnPongMenu 
   or paused 
   or OnSettings 
   or OnSettingsAudio 
   or OnCustomization
   or OnCustomizationPlayerOne
   or OnCustomizationPlayerTow
   or OnCustomizationBall
   then
    love.mouse.setPosition( 0, 0 )
   if key == "up" then
    keyboard:MenuUp()
   elseif key == "down" then
    keyboard:MenuDown()
   elseif key == "right" then
    keyboard:MenuRight()
   elseif key == "left" then
    keyboard:MenuLeft()
   end
  end
   -- Enter things
   if key == "return" then
    button_blop:play()
    keyboard:Enter_things()
 end
end

 -- Controler
 function love.gamepadpressed( joystick, button )
   if button == "b"
   or button == "back"
   or button == "start"
   then
     if not (OnStartMenu or OnPongMenu or OnSettings or OnSettingsAudio) then
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
  if OnStartMenu or OnPongMenu or paused or OnSettings or OnSettingsAudio then
    love.mouse.setPosition( 0, 0 )
    if button == "dpup" then
      keyboard:MenuUp()
    elseif button == "dpdown" then
      keyboard:MenuDown()
    elseif button == "dpright" then
      keyboard:MenuRight()
    elseif button == "dpleft" then
      keyboard:MenuLeft()
    end
  end
   -- Enter things
   if button == "a" then
    if not OnSettingsAudio then
      button_blop:play()
      end
    keyboard:Enter_things()
 end
end

 function love.focus(focus)
   if (started_SinglePlayer or started_LocalMultiPlayer) then
     if not focus then
       paused = true
       love.mouse.setVisible(paused)
     end
   end
 end

 function love.mousereleased( x, y, button, istouch, presses )
      keyboard:Enter_things()
      if not OnSettingsAudio then
      button_blop:play()
      end
 end
