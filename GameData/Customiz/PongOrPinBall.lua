function love.draw()
    love.graphics.setBackgroundColor(slategray)
  GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
  GameTitle_y = 50
  
  local pong_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local pong_button_y = love.graphics.getHeight() / 2 - button_height / 2 - 30
  
  local PinBall_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local PinBall_button_y =  pong_button_y + button_height + button_padding
  
  local main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local main_menu_settings_button_y = love.graphics.getHeight() - 60
  
  
  -- Hover over the Buttons --
  local mouse_x, mouse_y = love.mouse.getPosition()
   -- Pong
   if mouse_x >= pong_button_x and mouse_x <= pong_button_x + button_width and
       mouse_y >= pong_button_y and mouse_y <= pong_button_y + button_height or
       selectButton == 1 then
        selectButton = 1
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", pong_button_x, pong_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
   -- pinball
   if mouse_x >= PinBall_button_x and mouse_x <= PinBall_button_x + button_width and
       mouse_y >= PinBall_button_y and mouse_y <= PinBall_button_y + button_height or
       selectButton == 2 then
        selectButton = 2
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", PinBall_button_x , PinBall_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
   -- Main Menu
   if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
       mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
       selectButton == 3 then
        selectButton = 3
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
           -- Game Title
           love.graphics.setFont(Game_Titl_font)
            love.graphics.setColor(white)
            love.graphics.printf(CustomizeName, GameTitle_x, GameTitle_y, button_start_y, "center")
            GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
            GameTitle_y = 80
  
           love.graphics.setFont(Button_font)
  
           -- Pong
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill",pong_button_x, pong_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(PongName, pong_button_x, pong_button_y + 10, button_width, "center")
           pong_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           pong_button_y =  PinBall_button_y + button_height + button_padding
  
            -- pinball
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill", PinBall_button_x,PinBall_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(pinballName, PinBall_button_x, PinBall_button_y + 10, button_width, "center")
           PinBall_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           PinBall_button_y = love.graphics.getHeight() / 2 - button_height / 2
  
           -- Menu Menu
           love.graphics.setColor(BackOrCloseButton)
           love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(BackName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
           main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           main_menu_settings_button_y = love.graphics.getHeight() - 60
  end