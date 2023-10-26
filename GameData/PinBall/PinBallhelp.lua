PinBallhelp = {}

function PinBallhelp()

    love.graphics.setBackgroundColor(slategray)
    GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
    GameTitle_y = 50
    
--player 

    LeftText_x = love.graphics.getWidth() * 0.05
    LeftText_y = GameTitle_y + 70

    RightText_x = love.graphics.getWidth() * 0.05
    RightText_y = LeftText_y + 70

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

              -- player
              love.graphics.setFont(Game_Titl_font)

              love.graphics.setFont(emoji_font)
              love.graphics.printf(LeftName .." " .. "[⬅]", LeftText_x, LeftText_y,  love.graphics.getWidth() * 0.9, "center")

              love.graphics.printf(RightName .. " " .. "[➡]", RightText_x, RightText_y, love.graphics.getWidth() * 0.9, "center")

             love.graphics.setFont(Button_font)
    
             -- Play Button
             love.graphics.setColor(BackOrCloseButton)
             love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(white)
             love.graphics.printf(GameContinueName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
             main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             main_menu_settings_button_y = love.graphics.getHeight() - 60

    end