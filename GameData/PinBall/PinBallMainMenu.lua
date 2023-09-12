function love.draw() 
   local CommingSoon_pinball_button_y = love.graphics.getHeight() / 2
      -- Game Title
      love.graphics.setFont(Game_Titl_font)
      love.graphics.setColor(white)
      love.graphics.printf(GameTitleName, GameTitle_x, GameTitle_y, button_start_y, "center")

      love.graphics.setColor(yellow)
      local PongName_font = love.graphics.newFont("Fonts/VT323-Regular.ttf", 30)
      love.graphics.setFont(PongName_font)
      love.graphics.printf(pinballName, GameTitle_x  , GameTitle_y + 40, button_start_y, "center")
    

      local font_dev = love.graphics.newFont("Fonts/NEONLEDLight.otf", 50)
      love.graphics.setFont(font_dev)
      love.graphics.setColor(red)
      love.graphics.printf(CommingSoonName, GameTitle_x, CommingSoon_pinball_button_y, button_start_y, "center")


      -- GameExit
      love.graphics.setFont(Button_font)
       selectButton = 1
       love.graphics.setColor(yellow)
       love.graphics.rectangle("fill", quit_button_x , quit_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
       --
       love.graphics.setColor(BackOrCloseButton)
       love.graphics.rectangle("fill", quit_button_x, quit_button_y, button_width, button_height, corner_radius, corner_radius)
       love.graphics.setColor(255, 255, 255)
       love.graphics.printf(main_menuName, quit_button_x, quit_button_y + 10, button_width, "center")


end