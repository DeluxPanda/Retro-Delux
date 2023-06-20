
local Height = 100
local Width = 20
local x = 100
local y = love.graphics.getHeight() / 2

function love.draw()
    love.graphics.setColor(red)
    love.graphics.rectangle("fill", x, y, Width, Height)
    color_button_height = 25
    GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
    GameTitle_y = 50
    
    PlayerOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    PlayerOne_button_y = love.graphics.getHeight() / 2 - button_height / 2 - 30
    -- 1
    ColorOne_button_x = PlayerOne_button_x + 210
    ColorOne_button_Y = PlayerOne_button_y - 50
    --2
    ColorTow_button_x = PlayerOne_button_x + 210
    ColorTow_button_Y = ColorOne_button_Y + button_height + 5
    --3
    ColorThree_button_x = PlayerOne_button_x + 210
    ColorThree_button_Y = ColorTow_button_Y + button_height + 5

    ColorFour_button_x = PlayerOne_button_x + 210
    ColorFour_button_Y = ColorThree_button_Y + button_height + 5

    ColorFive_button_x = PlayerOne_button_x + 210
    ColorFive_button_Y = ColorFour_button_Y + button_height + 5

    ColorSix_button_x = PlayerOne_button_x + 210
    ColorSix_button_Y = ColorFive_button_Y + button_height + 5

    ColorSeven_button_x = PlayerOne_button_x + 210
    ColorSaven_button_Y = ColorSix_button_Y + button_height + 5

    ColorEight_button_x = PlayerOne_button_x + 210
    ColorEight_button_Y = ColorSaven_button_Y + button_height + 5

    ColorNine_button_x = PlayerOne_button_x + 210
    ColorNine_button_Y = ColorEight_button_Y + button_height + 5

    ColorTen_button_x = PlayerOne_button_x + 210
    ColorTen_button_Y = ColorNine_button_Y + button_height + 5

    PlayerTow_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    PlayerTow_settings_button_y =  PlayerOne_button_y + button_height + button_padding
    
    audio_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    audio_settings_button_y =  PlayerTow_settings_button_y + button_height + button_padding
    
    main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    main_menu_settings_button_y = love.graphics.getHeight() - 60
    
    customiz_button_x = love.graphics.getWidth() - button_width - 10
    customiz_button_y = love.graphics.getHeight() - 60
    
    
    
    -- Hover over the Buttons --
    local mouse_x, mouse_y = love.mouse.getPosition()
   -- Color Select Tab
     if mouse_x >= PlayerOne_button_x and mouse_x <= PlayerOne_button_x + button_width and
         mouse_y >= PlayerOne_button_y and mouse_y <= PlayerOne_button_y + button_height or
         selectButton == 1 then
          selectButton = 1
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", PlayerOne_button_x, PlayerOne_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
     
--1
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill",ColorOne_button_x, ColorOne_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color One", ColorOne_button_x, ColorOne_button_Y + 10, button_width, "center")
         ColorOne_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorOne_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--2
         love.graphics.setColor(slategray)
         love.graphics.rectangle("fill",ColorTow_button_x, ColorTow_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color Tow", ColorTow_button_x, ColorTow_button_Y + 10, button_width, "center")
         ColorTow_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorTow_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--3
         love.graphics.setColor(green)
         love.graphics.rectangle("fill",ColorThree_button_x, ColorThree_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color Three", ColorThree_button_x, ColorThree_button_Y + 10, button_width, "center")
         ColorThree_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorThree_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--4
         love.graphics.setColor(red)
         love.graphics.rectangle("fill",ColorFour_button_x, ColorFour_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color Four", ColorFour_button_x, ColorFour_button_Y + 10, button_width, "center")
         ColorFour_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorFour_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--5
         love.graphics.setColor(white)
         love.graphics.rectangle("fill",ColorFive_button_x, ColorFive_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color Five", ColorFive_button_x, ColorFive_button_Y + 10, button_width, "center")
         ColorFive_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorFive_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--6
         love.graphics.setColor(gary)
         love.graphics.rectangle("fill",ColorSix_button_x, ColorSix_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color Six", ColorSix_button_x, ColorSix_button_Y + 10, button_width, "center")
         ColorSix_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorSix_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--7
         love.graphics.setColor(orange)
         love.graphics.rectangle("fill",ColorSeven_button_x, ColorSaven_button_Y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf("Color Saven", ColorSeven_button_x, ColorSaven_button_Y + 10, button_width, "center")
         ColorSeven_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
         ColorSaven_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--8
        love.graphics.setColor(violet)
        love.graphics.rectangle("fill",ColorEight_button_x, ColorEight_button_Y, button_width, button_height, corner_radius, corner_radius)
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf("Color Eight", ColorEight_button_x, ColorEight_button_Y + 10, button_width, "center")
        ColorEight_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
        ColorEight_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--9
        love.graphics.setColor(blue)
        love.graphics.rectangle("fill",ColorNine_button_x, ColorNine_button_Y, button_width, button_height, corner_radius, corner_radius)
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf("Color Nine", ColorNine_button_x, ColorNine_button_Y + 10, button_width, "center")
        ColorNine_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
        ColorNine_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
--10
        love.graphics.setColor(pinks)
        love.graphics.rectangle("fill",ColorTen_button_x, ColorTen_button_Y, button_width, button_height, corner_radius, corner_radius)
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf("Color Ten", ColorTen_button_x, ColorTen_button_Y + 10, button_width, "center")
        ColorTen_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
        ColorTen_button_Y =  PlayerTow_settings_button_y + button_height + button_padding
        end
    
     -- PlayerTow
     if mouse_x >= PlayerTow_settings_button_x and mouse_x <= PlayerTow_settings_button_x + button_width and
         mouse_y >= PlayerTow_settings_button_y and mouse_y <= PlayerTow_settings_button_y + button_height or
         selectButton == 2 then
          selectButton = 2
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", PlayerTow_settings_button_x , PlayerTow_settings_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
     end
    
      -- Ball
      if mouse_x >= audio_settings_button_x and mouse_x <= audio_settings_button_x + button_width and
      mouse_y >= audio_settings_button_y and mouse_y <= audio_settings_button_y + button_height or
      selectButton == 3 then
       selectButton = 3
      love.graphics.setColor(yellow)
      love.graphics.rectangle("fill", audio_settings_button_x , audio_settings_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
    end
    
     -- Main Menu
     if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
         mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
         selectButton == 4 then
          selectButton = 4
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
     end
    
    
             -- Game Title
             love.graphics.setFont(Game_Titl_font)
              love.graphics.setColor(255, 255, 255)
             love.graphics.printf(CustomizePlayerOneName, GameTitle_x, GameTitle_y, button_start_y, "center")
              GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
              GameTitle_y = 80
    
             love.graphics.setFont(Button_font)
    
             -- Color Select Tab
             love.graphics.setColor(green)
             love.graphics.rectangle("fill",PlayerOne_button_x, PlayerOne_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(SelectColorName, PlayerOne_button_x, PlayerOne_button_y + 10, button_width, "center")
             PlayerOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             PlayerOne_button_y =  PlayerTow_settings_button_y + button_height + button_padding
    
              -- PlayerTow
             love.graphics.setColor(green)
             love.graphics.rectangle("fill", PlayerTow_settings_button_x,PlayerTow_settings_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(PlayerTowName, PlayerTow_settings_button_x, PlayerTow_settings_button_y + 10, button_width, "center")
             PlayerTow_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             PlayerTow_settings_button_y = love.graphics.getHeight() / 2 - button_height / 2
    
            -- Ball
            love.graphics.setColor(green)
            love.graphics.rectangle("fill", audio_settings_button_x, audio_settings_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(BallName, audio_settings_button_x, audio_settings_button_y + 10, button_width, "center")
            audio_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            audio_settings_button_y = love.graphics.getHeight() / 2 - button_height / 2
             
             -- Menu Menu
             love.graphics.setColor(red)
             love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(BackName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
             main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             main_menu_settings_button_y = love.graphics.getHeight() - 60
    
    
    
            end