function love.draw()
    GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
    GameTitle_y = 50
    
    PlayerOne_x = love.graphics.getWidth() * 0.05
    PlayerOne_y  = GameTitle_y + 20

    UpText_x = PlayerOne_x
    UpText_y = PlayerOne_y + 50

    DownText_x = PlayerOne_x
    DownText_y = UpText_y + 50

    UpEmoli_x = PlayerOne_x
    UpEmoli_y = DownText_y + 50

    DownEmoli_x = PlayerOne_x
    DownEmoli_y = UpEmoli_y + 50


    
--player 2

PlayerTow_x = love.graphics.getWidth() * 0.05
PlayerTow_y = GameTitle_y + 20

    UpText_x2 = PlayerTow_x
    UpText_y2 = PlayerTow_y + 50

    DownText_x2 = PlayerTow_x
    DownText_y2 = UpText_y2 + 50

    UpEmoli_x2 = PlayerTow_x
    UpEmoli_y2 = DownText_y2 + 50

    DownEmoli_x2 = PlayerTow_x
    DownEmoli_y2 = UpEmoli_y2 + 50

    main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    main_menu_settings_button_y = love.graphics.getHeight() - 60

    
    -- Hover over the Buttons --
    local mouse_x, mouse_y = love.mouse.getPosition()

     -- Main Menu
     if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
         mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
         selectButton == 1 then
          selectButton = 1
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
     end
    
    
             -- Game Title
             love.graphics.setFont(Game_Titl_font)
              love.graphics.setColor(white)
              love.graphics.printf(HelpName, GameTitle_x, GameTitle_y, button_start_y, "center")

              love.graphics.printf(PlayerOneName, PlayerOne_x, PlayerOne_y, button_start_y, "left")
              
              love.graphics.setFont(emoji_font)
              love.graphics.printf(UPName .." " .. "W", UpText_x, UpText_y, button_start_y, "left")
              
              love.graphics.printf(DownName .. " " .. "S", DownText_x, DownText_y, button_start_y, "left")

              love.graphics.printf(UPName.." " .. joystickUpName, UpEmoli_x, UpEmoli_y, button_start_y, "left")

              love.graphics.printf(DownName .. " " .. joystickDownName, DownEmoli_x, DownEmoli_y, button_start_y, "left")



              -- player 2
              love.graphics.setFont(Game_Titl_font)
              love.graphics.printf(PlayerTowName, PlayerTow_x, PlayerTow_y,  love.graphics.getWidth() * 0.9, "right")
             
              love.graphics.setFont(emoji_font)
              love.graphics.printf(UPName .." " .. "[⬆]", UpText_x2, UpText_y2,  love.graphics.getWidth() * 0.9, "right")

              love.graphics.printf(DownName .. " " .. "[⬇]", DownText_x2, DownText_y2,  love.graphics.getWidth() * 0.9, "right")
              
              love.graphics.printf(UPName .." " .. joystickUpName, UpEmoli_x2, UpEmoli_y2,  love.graphics.getWidth() * 0.9, "right")

              love.graphics.printf(DownName .. " " .. joystickDownName, DownEmoli_x2, DownEmoli_y2,  love.graphics.getWidth() * 0.9, "right")

             love.graphics.setFont(Button_font)
    
             -- Play Button
             love.graphics.setColor(red)
             love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(white)
             love.graphics.printf(GameContinueName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
             main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             main_menu_settings_button_y = love.graphics.getHeight() - 60

    end