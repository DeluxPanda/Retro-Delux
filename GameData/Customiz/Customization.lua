function love.draw()
    love.graphics.setBackgroundColor(ColorSelectedForBackground)
  GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
  GameTitle_y = 50
  
  PlayerOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  PlayerOne_button_y = love.graphics.getHeight() / 2 - button_height / 2 - 30
  
  PlayerTwo_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  PlayerTwo_settings_button_y =  PlayerOne_button_y + button_height + button_padding
  
  audio_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  audio_settings_button_y =  PlayerTwo_settings_button_y + button_height + button_padding

  main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  main_menu_settings_button_y = love.graphics.getHeight() - 60
  
  local Background_button_x = love.graphics.getWidth() - button_width - 10
  local Background_button_y = love.graphics.getHeight() - 60

  -- Hover over the Buttons --
  local mouse_x, mouse_y = love.mouse.getPosition()
   -- PlayerOne
   if mouse_x >= PlayerOne_button_x and mouse_x <= PlayerOne_button_x + button_width and
       mouse_y >= PlayerOne_button_y and mouse_y <= PlayerOne_button_y + button_height or
       selectButton == 1 then
        selectButton = 1
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", PlayerOne_button_x, PlayerOne_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
   -- PlayerTwo
   if mouse_x >= PlayerTwo_settings_button_x and mouse_x <= PlayerTwo_settings_button_x + button_width and
       mouse_y >= PlayerTwo_settings_button_y and mouse_y <= PlayerTwo_settings_button_y + button_height or
       selectButton == 2 then
        selectButton = 2
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", PlayerTwo_settings_button_x , PlayerTwo_settings_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
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
  
      --Background
      if mouse_x >= Background_button_x and mouse_x <= Background_button_x + button_width and
      mouse_y >= Background_button_y and mouse_y <= Background_button_y + button_height or
      selectButton == 5 then
       selectButton = 5
      love.graphics.setColor(yellow)
      love.graphics.rectangle("fill", Background_button_x , Background_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
      end

           -- Game Title
           love.graphics.setFont(Game_Titl_font)
            love.graphics.setColor(white)
            love.graphics.printf(CustomizeName, GameTitle_x, GameTitle_y, button_start_y, "center")
            GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
            GameTitle_y = 80

           love.graphics.setFont(Button_font)
  
           -- PlayerOne
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill",PlayerOne_button_x, PlayerOne_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(PlayerOneName, PlayerOne_button_x, PlayerOne_button_y + 10, button_width, "center")
           PlayerOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           PlayerOne_button_y =  PlayerTwo_settings_button_y + button_height + button_padding
  
            -- PlayerTwo
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill", PlayerTwo_settings_button_x,PlayerTwo_settings_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(PlayerTwoName, PlayerTwo_settings_button_x, PlayerTwo_settings_button_y + 10, button_width, "center")
           PlayerTwo_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           PlayerTwo_settings_button_y = love.graphics.getHeight() / 2 - button_height / 2
  
          -- Ball
          love.graphics.setColor(NormalButtons)
          love.graphics.rectangle("fill", audio_settings_button_x, audio_settings_button_y, button_width, button_height, corner_radius, corner_radius)
          love.graphics.setColor(white)
          love.graphics.printf(BallName, audio_settings_button_x, audio_settings_button_y + 10, button_width, "center")
          audio_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
          audio_settings_button_y = love.graphics.getHeight() / 2 - button_height / 2
           
           -- Menu Menu
           love.graphics.setColor(BackOrCloseButton)
           love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(BackName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
           main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           main_menu_settings_button_y = love.graphics.getHeight() - 60

           --Background
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill", Background_button_x, Background_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(255, 255, 255)
           love.graphics.printf(BackgroundName, Background_button_x, Background_button_y + 10, button_width, "center")


  end