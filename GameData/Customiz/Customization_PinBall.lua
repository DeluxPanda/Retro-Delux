function love.draw()
    love.graphics.setBackgroundColor(slategray)
  local GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
  local GameTitle_y = 50
  
  local FlipperOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local FlipperOne_button_y = love.graphics.getHeight() / 2 - button_height / 2 - 30
  
  local FlipperTow_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local PlayerTow_button_y =  FlipperOne_button_y + button_height + button_padding
  
  local Ball_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local Ball_button_y =  PlayerTow_button_y + button_height + button_padding
  
  local main_menu_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
  local main_menu_button_y = love.graphics.getHeight() - 60
  
  -- Hover over the Buttons --
  local mouse_x, mouse_y = love.mouse.getPosition()
   -- PlayerOne
   if mouse_x >= FlipperOne_button_x and mouse_x <= FlipperOne_button_x + button_width and
       mouse_y >= FlipperOne_button_y and mouse_y <= FlipperOne_button_y + button_height or
       selectButton == 1 then
        selectButton = 1
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", FlipperOne_button_x, FlipperOne_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
   -- PlayerTow
   if mouse_x >= FlipperTow_button_x and mouse_x <= FlipperTow_button_x + button_width and
       mouse_y >= PlayerTow_button_y and mouse_y <= PlayerTow_button_y + button_height or
       selectButton == 2 then
        selectButton = 2
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", FlipperTow_button_x , PlayerTow_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
    -- Ball
    if mouse_x >= Ball_button_x and mouse_x <= Ball_button_x + button_width and
    mouse_y >= Ball_button_y and mouse_y <= Ball_button_y + button_height or
    selectButton == 3 then
     selectButton = 3
    love.graphics.setColor(yellow)
    love.graphics.rectangle("fill", Ball_button_x , Ball_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
  end
  
   -- Main Menu
   if mouse_x >= main_menu_button_x and mouse_x <= main_menu_button_x + button_width and
       mouse_y >= main_menu_button_y and mouse_y <= main_menu_button_y + button_height or
       selectButton == 4 then
        selectButton = 4
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", main_menu_button_x , main_menu_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
   end
  
           -- Game Title
           love.graphics.setFont(Game_Titl_font)
            love.graphics.setColor(white)
            love.graphics.printf(CustomizeName, GameTitle_x, GameTitle_y, button_start_y, "center")
            GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
            GameTitle_y = 80
  
            love.graphics.setColor(yellow)
            local PongName_font = love.graphics.newFont("Fonts/VT323-Regular.ttf", 30)
            love.graphics.setFont(PongName_font)
            love.graphics.printf(pinballName, GameTitle_x  , GameTitle_y + 40, button_start_y, "center")
           

           love.graphics.setFont(Button_font)
  
           -- FlipperOne
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill",FlipperOne_button_x, FlipperOne_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(FlipperOneName, FlipperOne_button_x, FlipperOne_button_y + 10, button_width, "center")
           FlipperOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           FlipperOne_button_y =  PlayerTow_button_y + button_height + button_padding
  
            -- FlipperTow
           love.graphics.setColor(NormalButtons)
           love.graphics.rectangle("fill", FlipperTow_button_x,PlayerTow_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(FlipperTowName, FlipperTow_button_x, PlayerTow_button_y + 10, button_width, "center")
           FlipperTow_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           PlayerTow_button_y = love.graphics.getHeight() / 2 - button_height / 2
  
          -- Ball
          love.graphics.setColor(NormalButtons)
          love.graphics.rectangle("fill", Ball_button_x, Ball_button_y, button_width, button_height, corner_radius, corner_radius)
          love.graphics.setColor(white)
          love.graphics.printf(BallName, Ball_button_x, Ball_button_y + 10, button_width, "center")
          Ball_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
          Ball_button_y = love.graphics.getHeight() / 2 - button_height / 2
           
           -- Menu Menu
           love.graphics.setColor(BackOrCloseButton)
           love.graphics.rectangle("fill", main_menu_button_x, main_menu_button_y, button_width, button_height, corner_radius, corner_radius)
           love.graphics.setColor(white)
           love.graphics.printf(BackName, main_menu_button_x, main_menu_button_y + 10, button_width, "center")
           main_menu_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
           main_menu_button_y = love.graphics.getHeight() - 60

  end